class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :phone_number

      t.timestamps
    end
  end
end
