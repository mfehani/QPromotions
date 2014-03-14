class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :name
      t.integer :promotion_id

      t.timestamps
    end
  end
end
