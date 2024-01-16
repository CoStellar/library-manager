class CopiesController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @copy = @book.copies.create
    @copy.book.check_reservations
    redirect_to book_path(@book)
  end


  def destroy
    @copy = Copy.find(params[:id]) 
    @book = @copy.book 
    @copy.destroy 

    redirect_to show_path(@book), status: :see_other
  end

  private

  def copy_params
    params.require(:copy).permit(:copy_number)
  end
end
