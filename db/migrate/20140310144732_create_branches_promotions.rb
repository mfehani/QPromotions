class CreateBranchesPromotions < ActiveRecord::Migration
  def change
    create_table :branches_promotions do |t|
      t.integer :branch_id
      t.integer :promotion_id

      t.timestamps
    end
  end
end
