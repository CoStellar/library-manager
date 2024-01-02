class PanelController < ApplicationController
  def index
    if params[:approved] == "false"
      @users = User.where(approved: false)
    else
      @users = User.all
    end
  end

    def user_borrowing
      @borrowed_books = current_user.borrowings.includes(:copy => :book).where(returned: false).map(&:copy).uniq
    end
  
  
end
