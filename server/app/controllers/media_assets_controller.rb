class MediaAssetsController < ApplicationController
  before_action :set_media_asset, only: [:show, :update, :destroy]

  # GET /media_assets
  def index
    @media_assets = MediaAsset.all

    render json: @media_assets
  end

  # GET /media_assets/1
  def show
    render json: @media_asset
  end

  # POST /media_assets
  def create
    @media_asset = MediaAsset.new(media_asset_params)

    if @media_asset.save
      render json: @media_asset, status: :created, location: @media_asset
    else
      render json: @media_asset.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /media_assets/1
  def update
    if @media_asset.update(media_asset_params)
      render json: @media_asset
    else
      render json: @media_asset.errors, status: :unprocessable_entity
    end
  end

  # DELETE /media_assets/1
  def destroy
    @media_asset.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_asset
      @media_asset = MediaAsset.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def media_asset_params
      params.fetch(:media_asset, {})
    end
end
