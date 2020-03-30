class User < ApplicationRecord
    has_many :user_characters
    has_many :characters, -> {distinct},  through: :user_characters
    validates :email, presence:true
end
