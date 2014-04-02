class CreatePromotionTags < ActiveRecord::Migration
  def change
    create_table :promotions_tags do |t|
      t.integer :promotion_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
