class UsersController < ApplicationController
#reading user input
skip_before_action:verify_authenticity_token

before_action :authorize_request, except: :create


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
  end
  
   def search
   user=User.where("FirstName LIKE ? ","%#{params[:FirstName]}%")
    render json:user
   end

  def show
    begin
      user = User.find(params[:id])
      render json: user
    rescue ActiveRecord::RecordNotFound
      render json: {:error => "not-found"}.to_json, :status => 404
    end
  end

end
