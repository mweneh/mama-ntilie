class ApplicationController < ActionController::API
    def app_response(status: 200, message: nil, body: nil)
        render json: {
           status: status,
           message: message,
           body: body
       }, status: status
    end
    
    def not_found(message)
    app_response(status: 404, message: message)
    end
end
