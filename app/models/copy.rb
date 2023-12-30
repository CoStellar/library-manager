# app/models/copy.rb

class Copy < ApplicationRecord
  belongs_to :book
  before_validation :generate_id, on: :create
  before_create :check_max_copies

  after_destroy :check_book_copies

  private

  def generate_id
    last_copy = Copy.where(book_id: book_id).order(id: :desc).limit(1).first

    # Automatycznie inkrementujemy ostatnie cztery cyfry
    self.id = "#{book.isbn.gsub(/\D/, '')}#{format('%04d', last_copy ? last_copy.id.to_i % 10000 + 1 : 1)}"
  end

  def check_max_copies
    max_copies = 9999
    current_copies = Copy.where(book_id: book_id).count

    if current_copies >= max_copies
      errors.add(:base, "Osiągnięto maksymalną liczbę kopii dla tej książki.")
      throw(:abort)
    end
  end

  def check_book_copies
    book.destroy if book.copies.empty?
  end

end
