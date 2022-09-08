class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.string :subject_name
      t.string :marks
      t.belongs_to :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
