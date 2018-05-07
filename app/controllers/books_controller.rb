class BooksController < ApplicationController

  def index
    @books = Book.all

    respond_to do |format|
        format.html
        format.json { render :json => @books.to_json }
        format.csv { }
        format.text
    end

  end

end
