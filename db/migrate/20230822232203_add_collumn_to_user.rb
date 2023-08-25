class AddCollumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nom, :string
    add_column :users, :presentation, :text
    add_column :users, :addresse, :string
    add_column :users, :service, :integer
  end
end
