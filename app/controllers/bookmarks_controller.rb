class BookmarksController < ApplicationController
  before_action :set_bookmark, only: :destroy
  before_action :set_list, ony: %i[new create]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
  end

  def destroy
    bookmark.destroy
    redirect_to list_path(@bookmark.list), status: :see_other
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

  def set_list
    @list = list.find(params[:list_id])
  end
end
