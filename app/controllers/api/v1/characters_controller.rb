class Api::V1::CharactersController < ApplicationController
    def index
        characters = Character.all
        render json: characters, include:{user_characters:{include: :user}} 
    end

    def create
        character = current_user.characters.find_or_create_by(character_params)
        if character.save
            render json: character
        else
            render json: character.errors, status: :bad_request
        end
    end

    def show
        character = Character.find_by_id(params[:id])
        render json: character, include: :user_characters
    end

    private
    def character_params
        params.require(:character).permit(:name,:description, :thumbnail, :image)
    end


end
