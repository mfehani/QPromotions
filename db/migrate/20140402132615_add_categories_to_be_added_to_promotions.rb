class AddCategoriesToBeAddedToPromotions < ActiveRecord::Migration
  def change
    add_column :promotions, :categories_to_be_added, :array
  end
end
