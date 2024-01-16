class ReviewsController < ApplicationController
  before_action :authenticate_user!
  respond_to :json
  include Swagger::Docs::Methods
  
  swagger_controller :reviews, 'Reviews Operations'

  swagger_api :user_rating do
    summary 'Get the user rating for a book'
    notes 'Get the user rating for the specified book'
    param :path, :id, :integer, :required, 'ID of the book to get the user rating for'
    response :unauthorized
    response :not_acceptable
    response :unprocessable_entity
  end

  swagger_api :create do
    summary 'Create a new review for a book'
    notes 'Create a new review for the specified book'
    param :path, :book_id, :integer, :required, 'ID of the book to review'
    param :form, 'review[rating]', :integer, :required, 'Rating for the book (1-5)'
    response :unauthorized
    response :not_acceptable
    response :unprocessable_entity
  end

  swagger_api :destroy do
    summary 'Delete a review'
    notes 'Delete the review with the specified ID'
    param :path, :id, :integer, :required, 'ID of the review to be deleted'
    response :unauthorized
    response :not_acceptable
    response :unprocessable_entity
  end

  def user_rating
      @book = Book.find(params[:id])
      @user_rating = current_user.reviews.find_by(book_id: @book.id)&.rating
  end

  def create
      @book = Book.find(params[:book_id])
      @review = @book.reviews.new(review_params)
      @review.user = current_user
  
      if @review.save
        redirect_to @book, notice: 'Recenzja została dodana.'
      else
        render 'books/show'
      end
  end

  def destroy
      @review = Review.find(params[:id]) 
      @book = @review.book 
      @review.destroy 
  
      redirect_to @book, notice: 'Recenzja została usunięta'
    end
  
    private
  
    def review_params
      params.require(:review).permit(:rating)
    end
end