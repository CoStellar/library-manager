# frozen_string_literal: true

class Borrowing < ApplicationRecord # rubocop:disable Style/Documentation
  belongs_to :user
  belongs_to :copy


  def users_and_borrowed_books
    @users_and_borrowed_books = User.includes(borrowings: { copy: :book }).all
  end
end
