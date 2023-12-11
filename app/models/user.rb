# frozen_string_literal: true

class User < ApplicationRecord # rubocop:disable Style/Documentation
  has_many :reservations
  has_many :reviews
end
