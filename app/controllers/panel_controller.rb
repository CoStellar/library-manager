class PanelController < ApplicationController
  respond_to :json
  include Swagger::Docs::Methods
  swagger_controller :panel, 'Panel Operations'

  swagger_api :index do
    summary 'Display users based on approval status'
    notes 'Display users with optional filtering by approval status'
    param :query, :approved, :boolean, :optional, 'Filter users by approval status (true/false)'
    response :unauthorized
    response :not_acceptable
  end

  swagger_api :user_borrowing do
    summary 'Display user\'s borrowed books and upcoming due dates'
    notes 'Display books currently borrowed by the logged-in user and their upcoming due dates'
    response :unauthorized
    response :not_acceptable
  end

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
