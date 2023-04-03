class ApplicationController < ActionController::API
    def app_response(status: 200, message: nil, body: nil)
        render json: {
           status: status,
           message: message,
           body: body
       }, status: status
      end
end
