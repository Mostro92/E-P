class SessionsController < ApplicationController

	def new
	end

	def create
		if user = User.authenticate(params[:email], params[:password])
			session[:user_id] = user.id
			flash[:notice] = "Erfolgreich angemeldet"
			redirect_to movies_url
		else
			flash.now[:alter] = "Ungültige Anmeldedaten"
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to movies_url
	end
end
