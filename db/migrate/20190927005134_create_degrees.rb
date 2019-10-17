class CreateDegrees < ActiveRecord::Migration[6.0]
  def change
    create_table :degrees do |t|
      t.string :degree_name, null: false
      t.string :major, null: false
      t.string :minor, null: false

      t.timestamps
    end
  end
end
