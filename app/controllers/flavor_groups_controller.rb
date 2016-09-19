class FlavorGroupsController < ApplicationController
  before_action :set_flavor_group, only: [:show, :edit, :update, :destroy]
  before_action :set_flavors, only: [:new, :create, :edit, :update]

  # GET /flavor_groups
  # GET /flavor_groups.json
  def index
    @flavor_groups = FlavorGroup.all
  end

  # GET /flavor_groups/1
  # GET /flavor_groups/1.json
  def show
  end

  # GET /flavor_groups/new
  def new
    @flavor_group = FlavorGroup.new
  end

  # GET /flavor_groups/1/edit
  def edit
  end

  # POST /flavor_groups
  # POST /flavor_groups.json
  def create
    @flavor_group = FlavorGroup.new(flavor_group_params)

    respond_to do |format|
      if @flavor_group.save
        format.html { redirect_to @flavor_group, notice: 'Flavor group was successfully created.' }
        format.json { render :show, status: :created, location: @flavor_group }
      else
        format.html { render :new }
        format.json { render json: @flavor_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flavor_groups/1
  # PATCH/PUT /flavor_groups/1.json
  def update
    respond_to do |format|
      if @flavor_group.update(flavor_group_params)
        format.html { redirect_to @flavor_group, notice: 'Flavor group was successfully updated.' }
        format.json { render :show, status: :ok, location: @flavor_group }
      else
        format.html { render :edit }
        format.json { render json: @flavor_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flavor_groups/1
  # DELETE /flavor_groups/1.json
  def destroy
    @flavor_group.destroy
    respond_to do |format|
      format.html { redirect_to flavor_groups_url, notice: 'Flavor group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_flavors
    @flavors = Flavor.all.pluck(:name, :id)
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_flavor_group
    @flavor_group = FlavorGroup.find_by_mnemonic!(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def flavor_group_params
    params.require(:flavor_group).permit(:name, :mnemonic, {flavor_ids: []}, :poster)
  end
end
