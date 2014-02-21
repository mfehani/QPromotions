class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :name
      t.integer :discount
      t.string :branch
      t.string :category
      t.string :location
      t.text :description
      t.date :valid

      t.timestamps
    end
  end
end