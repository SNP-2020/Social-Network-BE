class Post < ApplicationRecord
    belongs_to :user
    validates :postText, presence: true
end