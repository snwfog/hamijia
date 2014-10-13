class CreateOfferPets < ActiveRecord::Migration
  def change
    create_table :offer_pets do |t|
      t.boolean :has_pet

      t.timestamps
    end
  end
end
