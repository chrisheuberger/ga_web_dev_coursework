class CreateStudentsTable < ActiveRecord::Migration
  def up
    create_table :students do |t|
      t.name :string
    end
  end

  def down
  end
end
