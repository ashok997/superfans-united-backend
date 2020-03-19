class Api::V1::UserCharactersController < ApplicationController

    def create
        user = User.first
        character = Character.find_or_create_by(character_params)
        user_character = user.user_characters.new(details_params)
        user_character.character_id = character.id
        user_character.save
       
    end

    private

    def character_params
        params.require(:character).permit(:name, :description, :thumbnail, :image)
    end

    def details_params
        params.require(:details).permit(:votes, :comments)
    end
    

end