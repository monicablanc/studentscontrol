class AddGenerationIdToStudents < ActiveRecord::Migration[6.1]
  def change
    add_reference :students, :generation, null: false, foreign_key: true
    add_column :students, :ClaveCurp, :string, limit: 18
    add_column :students, :num_control, :integer, null: false, unique: true
    add_index :students, :num_control

  end
end
