class ChangeFirstnameToNameForUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.rename :first_name, :name
    end
  end
end
