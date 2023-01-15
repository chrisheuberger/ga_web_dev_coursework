class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :text
      t.text :attribution

      t.timestamps
    end
  end
end
