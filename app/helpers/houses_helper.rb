module HousesHelper
  def setup_house(owner)
    owner.tap do |o|
      o.pets.build if o.pets.empty?
      o.children.build if o.children.empty?
      o.offerings.build if o.offerings.empty?
    end

    owner.offerings.first.tap do |first_offer|
˜     first_offer.house = House.new if first_offer.house.nil?
      first_offer.house.address = Address.new if first_offer.house.address.nil?
    end

    owner
  end
end
