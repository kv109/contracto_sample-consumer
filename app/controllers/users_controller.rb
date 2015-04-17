class UsersController < ApplicationController
  def index
    @users = get_users_call.data
  end

  def show
    @user = get_users_by_id_call(id: params[:id]).data
  end
end
