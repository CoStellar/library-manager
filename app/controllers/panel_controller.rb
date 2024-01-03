class PanelController < ApplicationController
  def index
    if params[:approved] == "false"
      @users = User.where(approved: false)
    else
      @users = User.all
    end
  end

  def user_borrowing
    @borrowed_books = current_user.borrowings
    @upcoming_due_dates = @borrowed_books.select { |borrowing| !borrowing.returned && borrowing.due_date < (Date.today + 3.days) }
  end
  
  
  
end
