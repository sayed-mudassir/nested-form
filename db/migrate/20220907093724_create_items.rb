class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :item_price
      t.belongs_to :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
