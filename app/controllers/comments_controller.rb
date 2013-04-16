class CommentsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @comments = @book.comments.new(params[:comment])
    @comments.save
    flash[:notice] ='Comment saved !'
    redirect_to book_path(@book)
  end
end
