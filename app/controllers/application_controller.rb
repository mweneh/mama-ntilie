class ApplicationController < ActionController::API

    # jwt secret key
    SECRET_KEY = ENV['JWT_SECRET']

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

        # JWT Encoding
    def encode_data(payload)
        JWT.encode(payload, SECRET_KEY, 'HS256')
    end

    # JWT Decoding
    def decode_data(token)
        begin
        JWT.decode(token, SECRET_KEY, true, { algorithm: 'HS256' })
        rescue JWT::DecodeError => e
        nil
        end
    end
end
