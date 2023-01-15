class RemoveZodiacSignFromProtos < ActiveRecord::Migration
  def change
    remove_column :protos, :zodiac_sign
  end
end
