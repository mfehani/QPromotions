class RemoveCategoryFromPromotions < ActiveRecord::Migration
  def change
    remove_column :promotions, :category, :string
  end
end
