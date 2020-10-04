class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users, include:{characters: {include: :user_characters}}
    end

    
    def create
        params[:user][:password] = params[:password]
        user = User.create(user_params)
        if user.save
            session[:user_id] = user.id
            render json: user
        else 
            response = {error: user.errors.full_messages.to_sentence}
            render json: response
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
        params.require(:user).permit(:username, :email, :password)
    end
   
end
