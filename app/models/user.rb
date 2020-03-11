class User < ApplicationRecord
    belongs_to :character
    has_many :characters
    has_many :user_characters
    validates :email, presence:true
end
