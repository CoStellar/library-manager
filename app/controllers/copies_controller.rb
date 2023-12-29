class CopiesController < ApplicationController
    def create
        @book = Book.find(params[:book_id])
        @copy = @book.copies.create(copy_params)
        redirect_to book_path(@book)

    end
    
    
    private
    def copy_params
      params.require(:copy).permit(:id)
    end
end
  
  