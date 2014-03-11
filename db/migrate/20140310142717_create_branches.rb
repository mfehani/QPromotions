class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.integer :vendor_id
      t.integer :promotion_id

      t.timestamps
    end
  end
end
