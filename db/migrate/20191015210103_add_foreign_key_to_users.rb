class AddForeignKeyToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :student_id, :string, null: false
    add_foreign_key :users, :students, primary_key: "student_id"
  end
end
