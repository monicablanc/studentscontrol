class AddLowToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :low, :boolean
    add_column :subjects, :low, :boolean
  end
end
