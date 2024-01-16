# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  helper UsersHelper
  def index
    if params[:approved] == "false"
      @users = User.where(approved: false)
    else
      @users = User.all
    end
  end


end
