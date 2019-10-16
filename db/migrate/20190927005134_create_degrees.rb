class CreateDegrees < ActiveRecord::Migration[6.0]
  def change
    create_table :degrees do |t|
      t.string :degreeName
      t.string :major
      t.string :minor

      t.timestamps
    end
  end
end
