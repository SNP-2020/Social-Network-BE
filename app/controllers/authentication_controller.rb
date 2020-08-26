class AuthenticationController < ApplicationController
  skip_before_action :verify_authenticity_token
  def login
    user=User.find_by(email:params[:email])
    if !user
      render json:{message:"unsuccessful"}
    else
      if user.authenticate(params[:password])
        secret_key=Rails.application.secrets.secret_key_base[0]
        token=JWT.encode({
          user_id:user.id,
          email:user.email,
          },secret_key)
        render json:{ token: token }
      else
       render status: :unauthorized
      end
    end

  end
end
