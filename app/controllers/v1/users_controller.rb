class V1::UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create
        users = if params[:uid]
        User.find_by(uid: params[:uid])
      else
        User.all
      end
        render json: users
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :uid)
    end

end
