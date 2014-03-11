class AddPromotionIdToTags < ActiveRecord::Migration
  def change
    add_column :tags, :promotion_id, :integer
  end
end
