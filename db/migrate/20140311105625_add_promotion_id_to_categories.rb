class AddPromotionIdToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :promotion_id, :integer
  end
end
