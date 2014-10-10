class CreateOfferSmokes < ActiveRecord::Migration
  def change
    create_table :offer_smokes do |t|
      t.boolean :permit_smoking_inside
      t.boolean :permite_smoking_outside
      t.boolean :no_smoking

      t.timestamps
    end
  end
end
