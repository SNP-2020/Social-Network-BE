class Post < ApplicationRecord
    validates :postText, presence: true
end