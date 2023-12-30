# frozen_string_literal: true

class Book < ApplicationRecord # rubocop:disable Style/Documentation
  has_many :copies, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :author, presence: true
  validates :genre, presence: true
  validates :isbn, presence: true, uniqueness: true
  validates :description, presence: true
end
