class CreateConcepts < ActiveRecord::Migration[6.1]
  def change
    create_table :concepts do |t|
      t.string :name_concept
      t.decimal :cost_concept, :precision => 16, :scale => 2

      t.timestamps
    end
  end
end
