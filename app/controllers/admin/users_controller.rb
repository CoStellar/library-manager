# app/controllers/admin/users_controller.rb

class Admin::UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :check_admin_role, only: [:index, :edit, :update]
  
    def index
      @users = User.all
    end
  
    def edit
      @user = User.find(params[:id])
    end
  
    def update
      @user = User.find(params[:id])
      convert_approved_param
      if @user.update(user_params)
        flash[:notice] = "Użytkownik został zaktualizowany"
        redirect_to admin_user_path(@user)
      else
        flash[:alert] = "Wystąpił błąd podczas aktualizacji użytkownika"
        render :edit
      end
    end
  
    private
  
    def user_params
        params.require(:user).permit(:email, :username, :first_name, :last_name, :role, :approved)
      end

    def check_admin_role
      redirect_to root_path, alert: "Nie masz uprawnień do tej akcji" unless current_user&.admin?
    end

    def convert_approved_param
      params[:user][:approved] = params[:user][:approved].to_i.zero? ? false : true
    end
  end
  