class BooksController < ApplicationController
  def index
  end

  def new
    @books = Book.new
  end

  def create
  end

  def show
  end
end