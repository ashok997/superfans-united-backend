class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users, include:{characters: {include: :user_characters}}
      
    end

    def new
        

    end

    def create
        user = User.create(user_params)
        if user.save
            render json: user
        else 
            render json: user.errors, status: :bad_request
        end
    end

    def update
        user = User.last
        user.update(user_params)
        render json: user
    end

    def show
        user = User.find_by_id(params[:id])
        render json: user, include:{characters: {include: :user_characters}}
    end


    private
      def user_params
        params.require(:user).permit(:username,:email, :password)
      end
end
