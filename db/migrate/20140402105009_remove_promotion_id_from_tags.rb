class RemovePromotionIdFromTags < ActiveRecord::Migration
  def change
    remove_column :tags, :promotion_id, :integer
  end
end
