class AddGlutenColumnToDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :gluten, :boolean, default: true
    # add_column :dishes, :gluten, :boolean, :default => true
  end
end
