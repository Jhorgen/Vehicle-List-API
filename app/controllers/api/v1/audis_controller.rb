class Api::V1::AudisController < ApplicationController
  before_action :set_audi, only: [:show, :update, :destroy]
  # GET /audis
  def index
    @audis = Audi.all
    render json: @audis
  end
  # GET /audis/1
  def show
    render json: @audi
  end
  # POST /audis
  def create
    @audi = Audi.new(audi_params)
    if @audi.save
      render json: @audi, status: :created, location:        api_v1_audi_url(@audi)
    else
      render json: @audi.errors, status: :unprocessable_entity
    end
  end
  # PATCH/PUT /audis/1
  def update
    if @audi.update(audi_params)
      render json: @audi
    else
      render json: @audi.errors, status: :unprocessable_entity
    end
  end
  # DELETE /audis/1
  def destroy
    @audi.destroy
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_audi
    @audi = Audi.find(params[:id])
  end
  # Only allow a trusted parameter “white list” through.
  def audi_params
    params.require(:audi).permit(:make, :model, :year, :trim, :horsepower, :torque, :number_of_cylinders, :engine_displacement, :valves_per_cylinder)
  end
end
