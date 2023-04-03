class AuthenticationController < ApplicationController
    def login_user

    end
    
    def register_user
        user = User.create(username: auth_params[:username], email: auth_params[:email], password: auth_params[:pass])
        user.valid? ? account_created : account_creation_failed(user.errors)
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
