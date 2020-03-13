class Api::V1::UsersController < ApplicationController
    def index
        users = User.all
        render json: users, include: :user_characters
    end

    def create
        user = User.create(user_params)
        render json: user
    end

    def update
        user = User.first
        user.update(user_params)
        render json: user
    end

    def show
        user = User.first
        render json: user, include: :user_characters
    end


    private
    def character_params
        params.require(:character).permit(:name,:email)
    end
end
