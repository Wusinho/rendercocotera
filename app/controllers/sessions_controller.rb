class SessionsController < ApplicationController
before_action :set_user, only: [:create]

def create
  if @user&.authenticate(params[:password])
    render json: @user, status: :ok
  else
    render json: { error: "User not found" }, status: :unauthorized
  end
  
end

private

def set_user
  @user = User.find_by(email: params[:email])
end

end
