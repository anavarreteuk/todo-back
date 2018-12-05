class Api::V1::UsersController < ApplicationController
    def index
      @users = User.all
      render json: @users
    end
  
    def show
      @user = User.find_by(id: params[:id])
      if @user
        render json: @user
      else
        render json: {error: 'User not found.'}, status: 400
      end
    end
    
    def update
      @user = User.find_by(id: params[:id])
      @user.update(user_params)
      if @user.save
        render json: @user
      else
        render json: {error: 'Unable to update user.'}, status: 400
      end
    end

    def create
      @user = User.new(user_params)
      if @user.save
        render json: @user
      else
        render json: {error: 'Unable to create user.'}, status: 400
      end
    end
  
    def destroy
      @user = User.find_by(id: params[:id])
      if @user
        @user.destroy()
        render json: {message: 'User successfully deleted.'}
      else
        render json: {error: 'User not found.'}, status: 400
      end
    end

    def signin
      @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
          render json: @user
        else
          render json: {error: 'Email/Password Invalid.'}, status: 401
        end
    end
  
    private
    def user_params
      params.require(:user).permit(:username, :is_active, :firstname, :lastname, :email, :city, :country, :password_digest)
    end
end  