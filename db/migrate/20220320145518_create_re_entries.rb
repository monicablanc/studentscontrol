class CreateReEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :re_entries do |t|
      t.datetime :date

      t.timestamps
    end
  end
end
