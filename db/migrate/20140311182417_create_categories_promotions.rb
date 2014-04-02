class CreateCategoriesPromotions < ActiveRecord::Migration
  def change
    create_table :categories_promotions do |t|
      t.integer :promotion_id
      t.integer :category_id

      t.timestamps
    end
  end
end
