class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :type
      t.string :name
      t.string :email
      t.date :dob
      t.string :community
      t.string :nationality
      t.string :address
      t.integer :number

      t.timestamps
    end
  end
end
