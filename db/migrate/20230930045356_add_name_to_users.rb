class AddNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :department, :integer
    add_column :users, :manager, :boolean
  end
end
