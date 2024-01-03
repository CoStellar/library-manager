# frozen_string_literal: true

class MainController < ApplicationController # rubocop:disable Style/Documentation
  def index
    if user_signed_in?
      borrowings = current_user.borrowings.select { |borrowing| !borrowing.returned && borrowing.due_date < (Date.today + 3.days) }
      @upcoming_due_dates = borrowings.group_by { |borrowing| borrowing.copy.id }
    else
      @upcoming_due_dates = []
    end
  end
end
