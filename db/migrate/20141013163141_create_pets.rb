class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :type
      t.string :name

      t.timestamps
    end
  end
end
