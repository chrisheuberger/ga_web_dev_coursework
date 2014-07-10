class CreateCaws < ActiveRecord::Migration
  def change
    create_table :caws do |t|

      t.timestamps
    end
  end
end
