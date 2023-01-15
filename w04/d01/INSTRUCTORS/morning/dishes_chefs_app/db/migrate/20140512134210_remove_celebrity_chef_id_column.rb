class RemoveCelebrityChefIdColumn < ActiveRecord::Migration
  def change
    remove_column :dishes, :celebrity_chef_id, :integer
  end
end
