class AuthenticationController < ApplicationController
    def login_user

    end
    
    def register_user
    
    end

    private
    def auth_params
    params.permit(:username, :email, :pass)
    end
end
