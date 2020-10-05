class RenameBlogIdColumnToFavorites < ActiveRecord::Migration[5.2]
  def change
    rename_column :favorites, :blog_id, :feed_id
  end
end
