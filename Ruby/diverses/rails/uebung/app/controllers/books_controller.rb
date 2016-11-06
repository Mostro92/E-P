class BooksController < ApplicationController

def index
	@books = Book.all
end

def show
	@book = Book.find(params[:id])
end

def edit
	@book = Book.find(params[:id])	
end

def destroy
	@book = Book.find(params[:id])
	@book = Book.destroy
	redirect_to_books_url
end

def update
		@book = Book.find(params[:id])
		permitted_params = book_params
		@book.update(permitted_params)
		redirect_to book_path(@book.id)
end

def create
	permitted_params = book_params
	@book = Book.new(permitted_params)
	@book.save
	redirect_to book_path(@book.id)
end

def new
	@book = Book.new
end

private
	def book_params
		params.require(:book).permit(:titel, :autor, :preis, :erscheinungsjahr, :beschreibung)
	end


end
