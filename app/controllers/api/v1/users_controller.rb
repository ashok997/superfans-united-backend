class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users, include:{characters: {include: :user_characters}}
      
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
        user = User.find_by_id(params[:id])
        render json: user, include:{characters: {include: :user_characters}}
    end


    private
      def user_params
        params.require(:user).permit(:name,:email)
      end
end
