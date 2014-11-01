class Wizards::OwnerOffersController < ApplicationController

  include Wicked::Wizard
  steps :basic_info, :family_info, :house_info, :room_info, :additional_info

  before_action :find_offering, only: [:show]

  def new
    @owner = Owner.new
    @offering = Offering.create
    @owner.offerings << @offering
    redirect_to wizard_path(steps.first, offering_id: @offering.id)
  end

  def show
    pr step
    render_wizard
  end

  def update
    @offer = Offering.find(params[:offering_id])
    @offer.update_attributes(offering_params)
    render_wizard @offer
  end

  def create
    @offer = Offering.create
    render json: @offer, status: :ok
  end

  private
  def offering_params
    params.require(:offering).permit(:name)
  end
  
  def find_offering
    @offering = Offering.find(params[:offering_id])
  end
end

