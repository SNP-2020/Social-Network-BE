class UserSerializer < ActiveModel::Serializer
  attributes :id, :FirstName, :LastName, :email, :birthDate, :gender, :about, :address, :phoneNumber, :profilePic
  has_many :posts
end
