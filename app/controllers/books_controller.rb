class BooksController < ApplicationController
  def index
    @books = Book.all
    render :index
  end


  def new
    # your code here
  end

  def create
    # your code here
  end

  def destroy
    book = Book.find(params[:title])
    book.destroy
    redirect_to book_url
    # if book.destroy
    #   book.destroy
    #   redirect_to  :controller => "BooksController", :action => 'index'
    #   render json: book
    # else
    #   render json: "Cant?"
    # end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
