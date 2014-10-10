class AddRefToOffer < ActiveRecord::Migration
  def change
    add_reference :offer_internets, :home, index: true
    add_reference :offer_meals, :home, index: true
    add_reference :offer_smokes, :home, index: true
    add_reference :homes, :owner, index: true
  end
end
