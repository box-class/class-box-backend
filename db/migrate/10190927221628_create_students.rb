class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :studentId
      t.string :firstName
      t.string :lastName
      t.date :dob
      t.string :address
      t.string :schoolName
      t.date :startDate
      t.date :projectedEd
      t.decimal :gpa

      t.timestamps
    end
  end
end
