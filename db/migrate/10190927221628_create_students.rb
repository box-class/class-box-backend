class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students, id: false do |t|
      t.string :student_id, primary_key: true, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.date :dob, null: false
      t.string :address, null: false
      t.string :school_name, null: false
      t.date :start_date, null: false
      t.date :projected_end_date, null: false
      t.decimal :gpa, null: false

      t.timestamps
    end
  end
end
