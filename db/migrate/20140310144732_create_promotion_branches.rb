class CreatePromotionBranches < ActiveRecord::Migration
  def change
    create_table :promotion_branches do |t|
      t.integer :branch_id
      t.integer :promotion_id

      t.timestamps
    end
  end
end
