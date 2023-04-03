class AuthenticationController < ApplicationController
    def login_user

    end
    
    def register_user
    
    end

    private
    def auth_params
    params.permit(:username, :email, :pass)
    end
    def account_created
        app_response(status: :created, message: "Account created")
    end
      
    def account_creation_failed(errors)
    app_response(status: :unprocessable_entity, message: "Account creation failed", body: errors)
    end
end
