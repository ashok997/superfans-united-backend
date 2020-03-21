class Api::V1::UserCharactersController < ApplicationController
    

    def create
        user = User.last
        character = Character.find_by(character_params)
        user_character = user.user_characters.new(details_params)
        user_character.character_id = character.id
        user_character.save
        render json: character, include:{user_characters:{include: :user}} 
    end

    private


    def details_params
        params.require(:details).permit(:votes, :comments)
    end

    def character_params
        params.require(:character).permit(:id)
    end
    

end