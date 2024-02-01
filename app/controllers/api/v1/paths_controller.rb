class Api::V1::PathsController < ApplicationController
  before_action :set_path, only: %i[ show update destroy ]

  def show
    render json: @path.to_json(
      only: [:id, :purpose, :address, :distance, :start_at, :end_at, :estimated_time, :status, :details]
    )
  end

  def create
    @path = Path.new(
      purpose: path_params[:purpose], 
      address: path_params[:address],
      distance: 100,  # calculate geo distance
      estimated_time: 10,  # calculate ETA
      status: path_params[:status],
      journey: Journey.find(path_params[:journey])
    )

    if @path.save
      render json: @path, status: :created
    else
      render json: @path.errors, status: :unprocessable_entity
    end
  end

  def update
    if @path.update(
      start_at: path_params[:start_at],
      end_at: path_params[:end_at], 
      status: path_params[:status],
      details: path_params[:details]
    )
      render json: @path
    else
      render json: @path.errors, status: :unprocessable_entity
    end
  end  

  def destroy
    @path.destroy
  end

  private
    def set_path
      @path = Path.find(params[:id])
    end

    def path_params
      params.require(:path).permit(:purpose, :address, :start_at, :end_at, :status, :details, :journey)
    end
end

