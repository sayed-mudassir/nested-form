class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :product_name
      t.string :price

      t.timestamps
    end
  end
end
