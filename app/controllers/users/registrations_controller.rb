class Users::RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_user!
  before_action :authorize_admin_for_update_actions, only: [:edit, :update, :update_approval]
  before_action :configure_account_update_params, only: [:update]
  helper UsersHelper

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :role])
  end
  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :username, :first_name, :last_name, :role)
  end
  def create
    super do |resource|
      resource.approved = false
    end
  end
  def after_update_path_for(resource)
    edit_user_registration_path(resource)
  end
  def edit
    @user = current_user
    super
  end

  def update_approval
    @user = User.find(params[:id])
    if @user.update(approved: true)
      redirect_to panel_path, notice: 'Profil został zatwierdzony.'
    else
      flash[:alert] = 'Wystąpił błąd podczas zatwierdzania profilu.'
    end
  end
  def update_disapproval
    @user = User.find(params[:id])
    if @user.borrowings.exists?(returned: false)
      flash[:alert] = 'Nie można usunąć profilu, użytkownik posiada nieoddane książki.'
      redirect_to panel_path
    else
      @user.borrowings.destroy_all
      @user.reservations.destroy_all
      @user.reviews.destroy_all
      if @user.destroy
        redirect_to panel_path, notice: 'Profil został usunięty.'
      else
        flash[:alert] = 'Wystąpił błąd podczas usuwania profilu.'
      end
    end
  end

  def update
    super
  end
  def authorize_admin_for_update_actions
    if current_user.role == '0' && action_name != 'update_approval'
      redirect_to root_path, alert: 'Nie masz uprawnień do tej akcji.'
    end
  end

  private

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :current_password])
  end
end
