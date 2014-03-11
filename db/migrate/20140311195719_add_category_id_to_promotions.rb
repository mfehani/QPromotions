class AddCategoryIdToPromotions < ActiveRecord::Migration
  def change
    add_column :promotions, :category_id, :integer
  end
end
