class Wizards::OwnerOffersController < ApplicationController
  include Wicked::Wizard
  steps :basic_info, :family_info, :house_info, :room_info, :additional_info

  def update
    @offer = Offering.find(params[:offering_id])
    @offer.update_attributes(offering_params)
    render_wizard @offer, json: @offer, status: :ok
  end

  def create
    @offer = Offering.create
    render json: @offer, status: :ok
  end

  private
  def offering_params
    params.require(:offering).permit(:name)
  end
end

