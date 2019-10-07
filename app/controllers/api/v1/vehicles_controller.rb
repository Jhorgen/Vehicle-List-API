class Api::V1::VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show, :update, :destroy]
  # GET /vehicles
  def index
    if params[:make]
      @vehicles = Vehicle.find_by_make(params[:make])
      render json: @vehicles
    else
      @vehicles = Vehicle.all
      render json: @vehicles
    end
  end
  # GET /vehicles/1
  def show
    render json: @vehicle
  end
  # POST /vehicles
  def create
    @vehicle = Vehicle.new(vehicle_params)
    if @vehicle.save
      render json: @vehicle, status: :created, location:        api_v1_vehicle_url(@vehicle)
    else
      render json: @vehicle.errors, status: :unprocessable_entity
    end
  end
  # PATCH/PUT /vehicles/1
  def update
    if @vehicle.update(vehicle_params)
      render json: @vehicle
    else
      render json: @vehicle.errors, status: :unprocessable_entity
    end
  end
  # DELETE /vehicles/1
  def destroy
    @vehicle.destroy
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end
  # Only allow a trusted parameter “white list” through.
  def vehicle_params
    params.require(:vehicle).permit(:make, :model, :year, :trim, :horsepower, :number_of_cylinders, :engine_displacement, :valves_per_cylinder)
  end
end
