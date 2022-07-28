# frozen_string_literal: true

class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new book_params

    if @book.save
      flash[:success] = "Saved!"
      redirect_to root_url
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

    def book_params
      params.require(:book).permit(:name, :author)
    end
end