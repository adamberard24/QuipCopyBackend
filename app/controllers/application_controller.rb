class ApplicationController < ActionController::API

    before_action :logged_In?


    def encode_token(payload)
        JWT.encode(payload, "jerkface")
    end

    def logged_In?
        headers = request.headers["Authorization"]
        token = headers.split(" ")[1]

        begin
            user_id = JWT.decode(token, "jerkface")[0]["user_id"]
            user = User.find(user_id)
        rescue
            user = nil

        end

        unless user
            render json: {error: "Login Dummy!"}
        end
    end
end
