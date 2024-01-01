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

    redirect_to list_path
  end

  def create
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

  def borrowed_books
    @borrowed_books = current_user.borrowings.includes(:copy => :book).map(&:copy).uniq
  end


  private

  def borrowing_params
    params.require(:borrowing).permit(:copy_id, :borrow_date, :due_date)
  end
  
  def set_users_and_borrowed_books
    @users_and_borrowed_books = User.includes(borrowings: { copy: :book }).all
  end

end
