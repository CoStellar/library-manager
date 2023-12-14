# frozen_string_literal: true

class Borrowing < ApplicationRecord # rubocop:disable Style/Documentation
  belongs_to :user
  belongs_to :copy
end
