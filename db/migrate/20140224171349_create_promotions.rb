class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :name
      t.integer :discount
      t.string :branch
      t.string :category
      t.text :description
      t.date :end_date

      t.timestamps
    end
  end
end
