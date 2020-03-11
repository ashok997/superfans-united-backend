class Character < ApplicationRecord
    belongs_to :user
    has_many :users
    has_many :user_characters
end
