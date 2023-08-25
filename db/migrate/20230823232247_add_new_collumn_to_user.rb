class AddNewCollumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :is_client, :boolean
  end
end
