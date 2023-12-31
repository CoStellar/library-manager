class CopiesController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @copy = @book.copies.create
    redirect_to book_path(@book)
  end


  def destroy
    #@book = Book.find(params[:book_id])
    #@copy = @book.copy.find(params[:copy_number])
    #@copy.destroy

    @copy = Copy.find(params[:id]) # Znajdź konkretną kopię po ID
    @book = @copy.book # Pobierz książkę związana z tą kopią
    @copy.destroy # Usuń tylko tę jedną kopię

    redirect_to show_path(@book), status: :see_other
  end

  private

  def copy_params
    params.require(:copy).permit(:copy_number)
  end
end
