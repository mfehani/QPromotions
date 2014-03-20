class AddPimageToPromotions < ActiveRecord::Migration
  def change
    add_column :promotions, :pimage, :string
  end
end
