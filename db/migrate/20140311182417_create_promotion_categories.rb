class CreatePromotionCategories < ActiveRecord::Migration
  def change
    create_table :promotion_categories do |t|
      t.integer :promotion_id
      t.integer :category_id

      t.timestamps
    end
  end
end
