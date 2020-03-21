class Api::V1::CharactersController < ApplicationController
    def index
        characters = Character.all
        render json: characters, include:{user_characters:{include: :user}} 
    end

    def create
        character = Character.find_or_create_by(character_params)
        render json: character
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
