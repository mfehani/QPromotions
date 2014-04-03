class AddTagsToBeAddedToPromotions < ActiveRecord::Migration
  def change
    add_column :promotions, :tags_to_be_added, :array
  end
end
