class ApplicationController < ActionController::API
 
        def current_user
          User.find_by(id: 2)
        end

        def logged_in?
            !!current_user
        end
end
