# frozen_string_literal: true

class Book < ApplicationRecord # rubocop:disable Style/Documentation
  has_many :copies
  has_many :reservations
  has_many :reviews

  validates :title, presence: true
  validates :author, presence: true
  validates :genre, presence: true

end
