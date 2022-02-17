class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])
  end

  def destroy

  end

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
