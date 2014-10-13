class Wizards::OwnerOfferController < ApplicationController
  include Wicked::Wizard

  steps :basic_info, :family_info, :house_info, :room_info, :additional_info
end