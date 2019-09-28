class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :studentId
      t.string :firstName
      t.string :lastName
      t.date :dob
      t.string :address
      t.string :schoolName
      t.references :degree, null: false, foreign_key: true
      t.date :startDate
      t.date :projectedEd
      t.decimal :gpa
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
