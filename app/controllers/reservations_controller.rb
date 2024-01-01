class ReservationsController < ApplicationController
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
  
    
    #mailer
    # Dodaj inne akcje w zależności od potrzeb
  end
  