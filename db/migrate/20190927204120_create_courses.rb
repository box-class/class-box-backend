class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :courseId
      t.string :shortName
      t.string :name
      t.integer :credits
      t.integer :time
      t.string :days

      t.timestamps
    end
  end
end
