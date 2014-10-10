class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :postal_code
      t.string :address
      t.string :apartment
      t.string :city
      t.string :province

      t.timestamps
    end
  end
end
