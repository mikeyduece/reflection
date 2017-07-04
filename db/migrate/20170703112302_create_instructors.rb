class CreateInstructors < ActiveRecord::Migration[5.1]
  def change
    create_table :instructors do |t|
      t.references :user, foreign_key: true
      t.references :cohort, foreign_key: true

      t.timestamps null: false
    end
  end
end
