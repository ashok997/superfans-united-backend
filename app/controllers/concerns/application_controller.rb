class ApplicationController < ActionController::API
    def current_user
         User.find_by(id: 2)
    end
end
