class RemoveCommunityFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :community, :string
  end
end
