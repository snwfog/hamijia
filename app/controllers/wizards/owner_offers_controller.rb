class Wizards::OwnerOffersController < ApplicationController

  include Wicked::Wizard
  steps :basic_info, :family_info, :house_info, :room_info, :additional_info

  before_action :find_offering, only: [:show, :update]

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
    @offering.update_attributes(offering_params)
    render_wizard @offering
  end

  def create
    @offering = Offering.create
    render json: @offering, status: :ok
  end

  private
  def offering_params
    params.require(:offering).permit(:name)
  end
  
  def find_offering
    @offering = Offering.find(params[:offering_id])
    @offering.build_owner if @offering.owner.nil?
    @owner = @offering.owner
  end
end

