class CreateProfileUnits < ActiveRecord::Migration[6.1]
  def change
    create_table :profile_units do |t|
      t.references :profile, null: false, foreign_key: true
      t.references :unit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
