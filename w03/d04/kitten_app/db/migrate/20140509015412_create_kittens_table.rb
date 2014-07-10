class CreateKittensTable < ActiveRecord::Migration
  def change
    create_table :kittens_tables do |t|
        t.string :name
    end
  end
end
