class UsersController < ApplicationController
  def index
    @users = get_users_call.data
  end
end
