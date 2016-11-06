class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :destroy, :update] 
before_action :require_signin, except: [:new, :create]
before_action :require_correct_user, only: [:update, :edit, :destroy]


def index
	@users = User.all
end

def show
end

def edit
end

def new
	@user = User.new
end

def destroy
	if @user.destroy
		redirect_to users_url
	else
		render "show"
	end
end

def update
	if @user.update(user_params)
		redirect_to user_path(@user.id)
	else
		render "edit"
	end
end

def create
	
	@user = User.new(user_params)
	if @user.save
		redirect_to users_url
	else
		
		render "new"
	end
end

private

def require_correct_user
	@user = User.find(params[:id])
	unless @user == current_user
		redirect_to root_url, alert: "finger weg"
	end
end

def user_params
	params.require(:user).permit(:name, :email, :password, :password_confirmation)
end

def set_user
	@user = User.find(params[:id])
end

end
