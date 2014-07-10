class CreatePalettes < ActiveRecord::Migration
  def change
    create_table :palettes do |t|
      t.string :title
      t.string :colors

      t.timestamps
    end
  end
end
