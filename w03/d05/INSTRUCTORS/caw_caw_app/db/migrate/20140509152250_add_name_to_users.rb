class AddNameToUsers < ActiveRecord::Migration
  def change
    #          table   column      datatype
    add_column :users, :first_name, :string
  end
end
