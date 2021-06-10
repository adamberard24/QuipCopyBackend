class UsersController < ApplicationController
    skip_before_action :logged_In?, only: [:create, :login]

    def show
        render json: @user
    end

    def create
        user = User.new(user_params)

        if user.valid?
            user.save
            render json: user
        else
            render json: {error: "Can't create user"}
    end
end

def login
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
        render json: {username: user.username, id: user.id, token: encode_token({user_id: user.id})}
    else 
        render json: {message: "Wrong username or Password"}
    end
end

    private
    def user_params
        params.permit(:username, :password)
    end
end