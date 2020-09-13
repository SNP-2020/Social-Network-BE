class User < ApplicationRecord


     has_secure_password


     has_many :posts


     validates :FirstName,presence: true,
          length:{minimum: 3, maximum: 10 }

     validates :LastName,presence: true,
          length:{minimum: 3, maximum: 10 }


     validates :email,presence: true,
     format: { with: /\A(.+)@(.+)\z/i, message: "Email invalid"  },
          uniqueness: { case_sensitive: false },
          length: {maximum: 254 }

     validates :gender,presence: true

     validates :birthDate,presence:true

end
