class RemoveBranchFromPromotions < ActiveRecord::Migration
  def change
    remove_column :promotions, :branch, :string
  end
end
