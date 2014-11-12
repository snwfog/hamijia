module OfferingsHelper
  def setup_offering_with_owner(offering)
    offering.tap do |o|
      o.owner.build if o.owner.nil?
    end
  end
end