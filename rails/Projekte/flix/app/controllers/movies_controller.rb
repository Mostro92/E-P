class MoviesController < ApplicationController
	before_action :set_movie, only: [:show, :edit, :update]
	def index
		@movies = Movie.all
		
	end
	def new
		@movie = Movie.new
		
	end
	def create
		#raise params.to_yml
		@movie = Movie.create(event_params)
		redirect_to movies_path
		
	end
	def edit
		
		
	end
	def update
		@movie.update(movie_params)
		redirect_to events_path
	end

	private
		def set_movie
			@movie = Movie.find(params[:id])
			
		end
		def movie_params
			params.require(:movie).permit(:name, :description, :location, :price, :start_date)
		end

end
