class User < ApplicationRecord
    has_many :user_characters
    has_many :characters, -> {distinct},  through: :user_characters
   
    has_secure_password

    validates :email, :username, presence: true
    validates :email, :username, uniqueness: true 
end
