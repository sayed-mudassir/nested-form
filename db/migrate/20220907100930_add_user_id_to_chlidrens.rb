class AddUserIdToChlidrens < ActiveRecord::Migration[6.1]
  def change
    add_column :chlidrens, :user_id, :integer
    add_index :chlidrens, :user_id
  end
end
