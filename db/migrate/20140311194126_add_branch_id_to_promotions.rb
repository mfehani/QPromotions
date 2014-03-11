class AddBranchIdToPromotions < ActiveRecord::Migration
  def change
    add_column :promotions, :branch_id, :integer
  end
end
