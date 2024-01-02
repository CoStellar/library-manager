class ReviewsController < ApplicationController
    before_action :authenticate_user!

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