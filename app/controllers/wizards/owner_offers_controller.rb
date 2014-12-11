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
    render_wizard
  end

  def update
    case step
    when :basic_info
      @offering.update_attributes(owner_offer_wizard_params)
    when :family_info
      @offering.owner.update_attributes(owner_offer_wizard_params)
    end

    render_wizard @offering
  end

  def create
    @offering = Offering.create
    render json: @offering, status: :ok
  end

  private

  def owner_offer_wizard_params
    case step
    when :basic_info
      params.require(:offering).permit(:name)
    when :family_info
      params.require(:owner).permit(:primary_language, :status, children_attributes: [:age], pets_attributes: [:name, :kind])
    end
  end

  def find_offering
    @offering = Offering.find(params[:offering_id])
    @offering.build_owner if @offering.owner.nil?
    @owner = @offering.owner
  end
end

