class ReservationsController < ApplicationController
  respond_to :json
  include Swagger::Docs::Methods

  swagger_controller :reservations, 'Reservations Operations'

  swagger_api :user_reservations do
    summary 'Display reservations for the logged-in user'
    notes 'Display reservations made by the logged-in user'
    response :unauthorized
    response :not_acceptable
  end

  swagger_api :create do
    summary 'Create a new reservation for a book'
    notes 'Create a new reservation for the specified book'
    param :form, 'reservation[book_id]', :integer, :required, 'ID of the book to be reserved'
    response :unauthorized
    response :not_acceptable
    response :unprocessable_entity
  end

  swagger_api :destroy do
    summary 'Cancel a reservation'
    notes 'Cancel the reservation with the specified ID'
    param :path, :id, :integer, :required, 'ID of the reservation to be canceled'
    response :unauthorized
    response :not_acceptable
    response :unprocessable_entity
  end

  def user_reservations
    @user_reservations = current_user.reservations
  end

  def create
      @book = Book.find(params[:book_id])
      @reservation = @book.reservations.create
      @reservation.user_id = current_user.id
      @reservation.notification_sent = false
      @reservation.reservation_completed = false
      @reservation.reservation_date = Date.today
      

      if @reservation.save
        redirect_to user_reservations_path, notice: 'Książka została zarezerwowana'
      else
        render :new
      end
  end

  def destroy
    @reservation = Reservation.find(params[:id]) 
    @book = @reservation.book 
    @reservation.destroy 

    redirect_to user_reservations_path, notice: 'Rezerwacja została anulowana'
  end


  private

  def reservation_params
      params.require(:reservation).permit(:book_id)
  end

  
end
  