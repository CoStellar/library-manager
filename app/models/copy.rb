# frozen_string_literal: true

class Copy < ApplicationRecord # rubocop:disable Style/Documentation
  has_many :borrowings
  belongs_to :book
end
