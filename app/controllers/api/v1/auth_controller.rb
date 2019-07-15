module Api
  module V1
class AuthController < ApplicationController

  def create
    # byebug
    @user = User.find_by(email:params[:email])
    if@user && @user.authenticate(params[:password])

      token = issue_token({JWT: @user.id})
      # byebug

      render json: {jwt: token, user: @user}
    else
      render json:{error: "Email//paswword incorrect"}
  end
end

def find_user
  token = request.headers["Authorization"]
  decoded_token = decode(token)
  @user = User.find(decoded_token[0]["JWT"])
  render json: {user: @user }
end


end
end
end
