class AddBranchesToBeAddedToPromotions < ActiveRecord::Migration
  def change
    add_column :promotions, :branches_to_be_added, :array
  end
end
