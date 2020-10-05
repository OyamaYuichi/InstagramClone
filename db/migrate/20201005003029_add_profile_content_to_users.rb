class AddProfileContentToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :profile_content, :string
  end
end
