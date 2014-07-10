class RemoveCelebrityChefsIdFromDishes < ActiveRecord::Migration
  def change
    remove_column :dishes, :celebrity_chefs_id, :integer
  end
end
