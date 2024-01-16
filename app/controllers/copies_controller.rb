class CopiesController < ApplicationController
  redpond_to :json
  include Swagger::Docs::Methods

  swagger_controller :copies, 'Copies Management'

  swagger_api :create do
    summary 'Create a new copy'
    notes 'Create a new copy for a book'
    param :path, :book_id, :integer, :required, 'ID of the book'
    response :unauthorized
    response :not_acceptable
  end

  swagger_api :destroy do
    summary 'Delete a copy'
    notes 'Delete a copy of a book'
    param :path, :id, :integer, :required, 'ID of the copy'
    response :unauthorized
    response :not_acceptable
  end
  
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
