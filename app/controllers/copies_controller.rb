class CopiesController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @copy = @book.copies.create
    redirect_to book_path(@book)
  end

  private

  def copy_params
    params.require(:copy).permit(:copy_number)
  end
end
