class CreateKittens < ActiveRecord::Migration
  def change
    create_table :kittens do |t|

      t.timestamps
    end
  end
end
