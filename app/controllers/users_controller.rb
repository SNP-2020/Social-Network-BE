class UsersController < ApplicationController
#reading user input
skip_before_action:verify_authenticity_token

  def create
    user =User.new(
      FirstName:params[:FirstName],
      LastName:params[:LastName],
      email:params[:email],
      password:params[:password],
      birthDate:params[:birthDate],
      gender:params[:gender]
    )
      if user.save
        render json:user
      else
        render status: :unauthorized
      end
   def search
   user=User.where("FirstName LIKE ? ","%#{[:FirstName]}%")
   render json:user
   end

 end
end
