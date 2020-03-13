class Api::V1::CharactersController < ApplicationController
    def index
        characters = Character.all
        render json: characters, include: :user_characters
    end

    def create
        character = Character.create(character_params)
        render json: character
    end


    private
    def character_params
        params.require(:character).permit(:name,:description, :thumbnail, :image)
    end


end
