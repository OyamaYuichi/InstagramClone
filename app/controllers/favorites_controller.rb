class FavoritesController < ApplicationController
  
  def index
    @favorites = current_user.favorites
    @user = User.find(current_user.id)
  end
  
  def create
    favorite = current_user.favorites.create(feed_id: params[:feed_id])
    redirect_to feeds_url, notice: "#{favorite.feed.user.name}さんの投稿をいいね！しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to feeds_url, notice: "#{favorite.feed.user.name}さんの投稿のいいね！を解除しました"
  end

  
end
