# frozen_string_literal: true

class Review < ApplicationRecord # rubocop:disable Style/Documentation
  belongs_to :user
  belongs_to :book
end
