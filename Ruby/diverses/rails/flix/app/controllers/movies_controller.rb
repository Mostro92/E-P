class MoviesController < ApplicationController

	def index
		@movies = Movie.past
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def edit
		@movie = Movie.find(params[:id])
	end

	def destroy
		raise params.to_yaml
		@movie = Movie.find(params[:id])
			if @movie.destroy
				flash[:notice] = "Movie successfully deleted."
				redirect_to movies_url
			else

				render "show"
			end
	end

	def update
		@movie = Movie.find(params[:id])
			if @movie.update(movie_params)
				flash[:notice] = "Movie successfully updated."
				redirect_to movie_path(@movie.id)
			else
				render "edit"
			end
	end

	def create
		@movie = Movie.new(movie_params)
			if @movie.save
				flash[:notice] = "Movie successfully created."
				redirect_to movie_path(@movie.id)
			else
				render "new"
			end
		
	end

	def new
		@movie = Movie.new
	end

	private
		def movie_params
			params.require(:movie).permit(:title, :descrption, :website, :rating, :release, :pledging, :total_gross)
		end
end
