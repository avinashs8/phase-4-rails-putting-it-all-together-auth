class UsersController < ApplicationController

    def create 
        user = User.create(user_params)

        session[:user_id] = user.id 
        if user.valid? 
            render json: user, status: 201
        else
            render json: { errors: ['No matching password or invalid data']}, status: 422
        end
    end

    private

    def user_params
        params.permit(:username, :password, :password_confirmation, :image_url, :bio)
    end
end
