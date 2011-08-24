class PolygonsController < ApplicationController
  def index
    # existing polygons
    @polygons = Polygon.includes(:points).all

    # new polygon
    @polygon = Polygon.new
    @polygon.points.build
  end

  def create
    @polygon = Polygon.new(params[:polygon])
    @polygon.save

    redirect_to polygons_path
  end

  def destroy
    @polygon = Polygon.find(params[:id])
    @polygon.destroy

    redirect_to polygons_path
  end
end

