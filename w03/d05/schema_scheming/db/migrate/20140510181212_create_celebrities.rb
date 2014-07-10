class CreateCelebrities < ActiveRecord::Migration
  def change
    create_table :celebrities do |t|
      t.string :name
      t.integer :age
      t.string :claim_to_fame
      t.boolean :substance_abuse

      t.timestamps
    end
  end
end
