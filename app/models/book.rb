# frozen_string_literal: true

class Book < ApplicationRecord # rubocop:disable Style/Documentation
  has_one :reservation
end
