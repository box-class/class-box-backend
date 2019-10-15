class AddForeignKeyToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :student_id, :string
    add_foreign_key :users, :students, primary_key: "studentId"
  end
end
