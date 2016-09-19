class TobaccosController < ApplicationController
  before_action :set_tobacco, only: [:show, :edit, :update, :destroy]
  before_action :set_selectors, only: [:new, :create, :edit, :update]

  # GET /tobaccos
  # GET /tobaccos.json
  def index
    @tobaccos = Tobacco.all
  end

  # GET /tobaccos/1
  # GET /tobaccos/1.json
  def show
  end

  # GET /tobaccos/new
  def new
    @tobacco = Tobacco.new
  end

  # GET /tobaccos/1/edit
  def edit
  end

  # POST /tobaccos
  # POST /tobaccos.json
  def create
    @tobacco = Tobacco.new(tobacco_params)

    respond_to do |format|
      if @tobacco.save
        format.html { redirect_to @tobacco, notice: 'Tobacco was successfully created.' }
        format.json { render :show, status: :created, location: @tobacco }
      else
        format.html { render :new }
        format.json { render json: @tobacco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tobaccos/1
  # PATCH/PUT /tobaccos/1.json
  def update
    respond_to do |format|
      if @tobacco.update(tobacco_params)
        format.html { redirect_to @tobacco, notice: 'Tobacco was successfully updated.' }
        format.json { render :show, status: :ok, location: @tobacco }
      else
        format.html { render :edit }
        format.json { render json: @tobacco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tobaccos/1
  # DELETE /tobaccos/1.json
  def destroy
    @tobacco.destroy
    respond_to do |format|
      format.html { redirect_to tobaccos_url, notice: 'Tobacco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_selectors
    @categories = Category.all.pluck(:name, :id)
    @brands = Brand.all.pluck(:name, :id)
    @flavors = Flavor.all.pluck(:name, :id)
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_tobacco
    @tobacco = Tobacco.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def tobacco_params
    params.require(:tobacco).permit(:name, :mnemonic, :weight, :smokiness, :stregth, :heat_resistance, :basis, :price, :category_id, :brand_id, {flavor_ids: []}, :description, :poster)
  end
end
