class AssetsController < ApplicationController
  before_action :set_asset, only: [:show, :edit, :update, :destroy]

  # GET /assets
  # GET /assets.json
  def index
    @assets = Asset.all
  end

  # GET /assets/1
  # GET /assets/1.json
  def show
  end

  # GET /assets/new
  def new
    @asset = Asset.new
  end

  # GET /assets/1/edit
  def edit
  end

  # POST /assets
  # POST /assets.json
  def create
    @asset = Asset.new(asset_params)
    if @asset.save
      flash[:success] = "Asset was successfully created"
      redirect_to asset_path(@asset)
    else
      render 'new'
    end
  end

  # PATCH/PUT /assets/1
  # PATCH/PUT /assets/1.json
  def update
    if @asset.update(asset_params)
      flash[:success] = "Article was successfully updated"
      redirect_to asset_path(@asset)
    else
      render 'edit'
    end
  end

  # DELETE /assets/1
  # DELETE /assets/1.json
  def destroy
    @asset.destroy
    flash[:success] = "Asset was successfully deleted"
    redirect_to assets_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asset
      @asset = Asset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asset_params
      params.require(:asset).permit(:asset_tag, :purchasedate, :typeofasset, :manufactuer, :model, :location_region, :location_site, :hostname, :assignee, :active)
    end
end
