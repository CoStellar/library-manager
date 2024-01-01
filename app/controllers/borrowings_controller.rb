class BorrowingsController < ApplicationController
  before_action :set_users_and_borrowed_books, only: [:return]

  def borrow
    @book = Book.find(params[:book_id])
    @copy = Copy.find(params[:copy_id])
    @borrowing = Borrowing.new
  end

  def return_book
    puts 'Zaczynamy akcję return_book!'
    @copy = Copy.find(params[:copy_id])

    if @copy.update(borrowed: false)
      borrowing = Borrowing.find_by(copy_id: @copy.id)
      borrowing.update(returned: true)

      flash[:notice] = 'Książka została zwrócona.'
    else
      flash[:alert] = 'Błąd podczas zwracania książki.'
    end
    puts 'Akcja return_book zakończona!'
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
