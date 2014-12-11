class OwnersController < ApplicationController
  # before_action :set_owner, only: [:show, :edit, :update, :destroy]
  before_action :fetch_owner, except: [:new, :choose]

  # # GET /owners/new
  def new; end

  def choose
    if current_user.role.nil?
      Owner.create.user = current_user
    else
      raise 'User is already associated with a student role, and cannot be reassigned' if current_user.role.is_student?
    end

    render 'starts_as_an_owner'
  end

  # GET /owners
  # GET /owners.json
  def index
    @owners = Owner.all
    render json: @owners, status: :ok
  end

  # GET /owners/1
  # GET /owners/1.json
  # def show
  # end


  # # GET /owners/1/edit
  # def edit
  # end
  #
  # # POST /owners
  # # POST /owners.json
  # def create
  #   @owner = Owner.new(owner_params)
  #
  #   respond_to do |format|
  #     if @owner.save
  #       format.html { redirect_to @owner, notice: 'Owner was successfully created.' }
  #       format.json { render :show, status: :created, location: @owner }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @owner.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # PATCH/PUT /owners/1
  # # PATCH/PUT /owners/1.json
  # def update
  #   respond_to do |format|
  #     if @owner.update(owner_params)
  #       format.html { redirect_to @owner, notice: 'Owner was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @owner }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @owner.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # DELETE /owners/1
  # # DELETE /owners/1.json
  # def destroy
  #   @owner.destroy
  #   respond_to do |format|
  #     format.html { redirect_to owners_url, notice: 'Owner was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end
  #
  private
  # Use callbacks to share common setup or constraints between actions.
  def fetch_owner
    @owner = Owner.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :email, :phone_number)
  end
end
