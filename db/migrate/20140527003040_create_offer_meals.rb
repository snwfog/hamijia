class CreateOfferMeals < ActiveRecord::Migration
  def change
    create_table :offer_meals do |t|
      t.boolean :has_breakfast
      t.boolean :has_lunch
      t.boolean :has_diner

      t.timestamps
    end
  end
end
