class AddPimageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :pimage, :string
  end
end
