# frozen_string_literal: true

class Book < ApplicationRecord # rubocop:disable Style/Documentation
  has_many :copies
  has_many :reservations
  has_many :reviews

  validates :title, presence: true
  validates :author, presence: true
  validates :genre, presence: true
  validates :isbn, presence: true, uniqueness: true
  validates :description, presence: true

  def check_reservations
    reservations = Reservation.where(book_id: self.id, reservation_completed: false).order(reservation_date: :asc)
  
    if reservations.any?
      reserved_copy = self.copies.where(borrowed: false).order(created_at: :asc).first
      if reserved_copy.present?
        ActiveRecord::Base.transaction do
          reserved_copy.update(borrowed: true)
          Borrowing.create(copy_id: reserved_copy.id, user_id: reservations.first.user_id, borrow_date: Date.today, due_date: Date.today + 14.days, returned: false, renewal_request: false)
          reservations.first.update(reservation_completed: true)
        

      
          reservation_user = User.find(reservations.first.user_id) if reservations.first.present?
          reserved_book = Book.find(reserved_copy.book_id) if reserved_copy.present?
          reservation_date = reservations.first.reservation_date if reservations.first.present?

          if reservation_user.present? && reserved_book.present?
          ApplicationMailer.user_reservation(reservation_user, reserved_book, reservation_date).deliver_now

          reservations.first.update(notification_sent: true)
          end
         
        end
      
      end
    end
  end
end
