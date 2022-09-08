class CreateChlidrens < ActiveRecord::Migration[6.1]
  def change
    create_table :chlidrens do |t|
      t.string :name
      t.string :child_class
      t.string :child_roll_no

      t.timestamps
    end
  end
end
