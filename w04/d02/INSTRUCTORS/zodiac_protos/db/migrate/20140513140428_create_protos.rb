class CreateProtos < ActiveRecord::Migration
  def change
    create_table :protos do |t|
      t.string :name
      t.date :birthday
      t.string :zodiac_sign

      t.timestamps
    end
  end
end
