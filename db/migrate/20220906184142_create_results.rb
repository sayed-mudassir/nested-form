class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.string :subject
      t.string :score
      t.belongs_to :chlidren, null: false, foreign_key: true

      t.timestamps
    end
  end
end
