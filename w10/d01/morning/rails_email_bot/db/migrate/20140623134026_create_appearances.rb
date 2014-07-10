class CreateAppearances < ActiveRecord::Migration
  def change
    create_table :appearances do |t|
      t.integer :person_id
      t.integer :site_id

      t.timestamps
    end
  end
end
