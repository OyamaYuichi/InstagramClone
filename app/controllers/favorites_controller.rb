class FavoritesController < ApplicationController
  
  def index
      @user = User.find(params[:user_id])
      @favorites = @user.favorites.order(created_at: :desc)
  end
  
  def create
    favorite = current_user.favorites.create(feed_id: params[:feed_id])
    redirect_to feed_path(params[:feed_id]), notice: "#{favorite.feed.user.name}さんの投稿をお気に入りしました"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to feed_path(favorite.feed.id), notice: "#{favorite.feed.user.name}さんの投稿のお気に入りを解除しました"
  end

  
end
