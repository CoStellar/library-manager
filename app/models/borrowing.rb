# frozen_string_literal: true

class Borrowing < ApplicationRecord # rubocop:disable Style/Documentation
  belongs_to :user
  belongs_to :copy


  def users_and_borrowed_books
    @users_and_borrowed_books = User.includes(borrowings: { copy: :book }).all
  end
  
  def cancel_borrowing(borrowing)
    Rails.logger.info("Wartość @borrowing przed wysłaniem mailera: #{borrowing.inspect}")
    ApplicationMailer.user_borrowing(borrowing).deliver_now
  end
end
