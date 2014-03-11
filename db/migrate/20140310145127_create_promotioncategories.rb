class CreatePromotioncategories < ActiveRecord::Migration
  def change
    create_table :promotioncategories do |t|
      t.integer :promotion_id
      t.integer :category_id

      t.timestamps
    end
  end
end
