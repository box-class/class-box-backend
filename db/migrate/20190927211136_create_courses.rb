class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :courseId
      t.string :shortName
      t.string :name
      t.integer :credits
      t.integer :time
      t.string :days
      t.references :degree, null: false, foreign_key: true

      t.timestamps
    end
  end
end
