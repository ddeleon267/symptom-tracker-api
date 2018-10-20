class ChangeExtriesToEntries < ActiveRecord::Migration[5.1]
  def change
    rename_table :extries, :entries
  end
end
