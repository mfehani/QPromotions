class AddAttachmentAvatarToPromotions < ActiveRecord::Migration
  def self.up
    change_table :promotions do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :promotions, :avatar
  end
end
