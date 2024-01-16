class BorrowingsController < ApplicationController
  before_action :set_users_and_borrowed_books, only: [:return]

  def borrow
    @book = Book.find(params[:book_id])
    @copy = Copy.find(params[:copy_id])
    @borrowing = Borrowing.new
  end

  def return_book
    @copy = Copy.find(params[:copy_id])
    ActiveRecord::Base.transaction do
      @copy.update(borrowed: false)
      borrowing = Borrowing.where(copy_id: @copy.id, returned: false).first
      borrowing.update(returned: true)
    end

      flash[:notice] = 'Książka została zwrócona.'
      @copy.book.check_reservations
      redirect_to return_path
  end
  
  def destroy
    @borrowing = Borrowing.find(params[:id])
    @copy = @borrowing.copy
    if @borrowing
      @copy.update(borrowed: false)
      @borrowing.cancel_borrowing(@borrowing)
      @borrowing.destroy
      redirect_to return_path, notice: 'Wypożyczenie zostało anulowane'
      @copy.book.check_reservations
    else
      redirect_to return_path, alert: 'Nie można znaleźć wypożyczenia o podanym ID.'
    end
  end


  def create
    if current_user.borrowings.where(returned: false).count >= 5
      redirect_to list_path, alert: 'Przekroczyłeś limit wypożyczonych książek.'
    else
      @borrowing = Borrowing.new(borrowing_params)
      @borrowing.user_id = current_user.id
      @borrowing.returned = false
      @borrowing.renewal_request = false
      @borrowing.copy.update(borrowed: true)
      if @borrowing.save
        redirect_to list_path, notice: 'Książka wypożyczona.'
      else
        render :new
      end
    end
  end

  def update
    @borrowing = Borrowing.find(params[:id])
    if @borrowing.update(update_borrowing_params)
      redirect_to list_path, notice: 'Pomyślnie zaktualizowano wypożyczenie.'
    else
      flash[:alert] = 'Błąd podczas aktualizacji wypożyczenia.'
      redirect_to list_path
    end
  end


  private

  def update_borrowing_params
    params.require(:borrowing).permit(:due_date, :renewal_request)
  end


  def borrowing_params
    params.require(:borrowing).permit(:copy_id, :borrow_date, :due_date)
  end
  
  def set_users_and_borrowed_books
    @users_and_borrowed_books = User.includes(borrowings: { copy: :book }).all
  end

end
