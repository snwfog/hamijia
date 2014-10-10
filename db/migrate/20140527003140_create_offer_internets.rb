class CreateOfferInternets < ActiveRecord::Migration
  def change
    create_table :offer_internets do |t|
      t.boolean :has_wireless
      t.boolean :has_wired
      t.boolean :has_internet

      t.timestamps
    end
  end
end
