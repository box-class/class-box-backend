class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :course_id, null: false
      t.string :short_name, null: false
      t.string :name, null: false
      t.integer :credits, null: false
      t.integer :time, null: false
      t.string :days, null: false
      t.references :degree, null: false, foreign_key: true

      t.timestamps
    end
  end
end
