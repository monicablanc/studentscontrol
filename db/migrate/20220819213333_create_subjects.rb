class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.string :name_subject
      t.integer :grade
      t.string :clave

      t.timestamps
    end
  end
end
