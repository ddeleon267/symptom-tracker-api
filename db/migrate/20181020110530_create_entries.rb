class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :extries do |t|
      t.integer :cycle_number
      t.integer :cycle_day
      t.date :datetime
      t.string :notes

      t.timestamps
    end
  end
end
