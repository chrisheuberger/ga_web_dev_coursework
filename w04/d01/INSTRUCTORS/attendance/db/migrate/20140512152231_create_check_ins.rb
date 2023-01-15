class CreateCheckIns < ActiveRecord::Migration
  def change
    create_table :check_ins do |t|
      t.datetime :time
      t.references :student
      t.timestamps
    end
  end
end
