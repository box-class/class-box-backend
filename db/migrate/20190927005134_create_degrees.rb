class CreateDegrees < ActiveRecord::Migration[6.0]
  def change
    create_table :degrees do |t|
      t.string :major
      t.string :minor
      t.references :students, null: false, foreign_key: true

      t.timestamps
    end
  end
end
