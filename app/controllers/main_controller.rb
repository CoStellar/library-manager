# frozen_string_literal: true

class MainController < ApplicationController # rubocop:disable Style/Documentation
  def index
    @books = Book.all
  end
end
