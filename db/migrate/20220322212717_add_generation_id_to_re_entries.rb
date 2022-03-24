class AddGenerationIdToReEntries < ActiveRecord::Migration[6.1]
  def change
    add_reference :re_entries, :generation, null: false, foreign_key: true
  end
end
