class Api::V1::PathwaysController < ApplicationController
  before_action :set_pathway, only: %i[ show update ]

  def index
    @pathways = Pathway.all

    render json: @pathways.to_json(only: [:id, :date, :status])
  end

  def show
    render json: @pathway.to_json(
      only: [:id, :date, :status],
      :include => {
        :journeys => {
          only: [:id, :date, :status],
          :include => {
            :paths => {
              only: [:id, :purpose, :address, :distance, :start_at, :end_at, :estimated_time, :status, :details]
            }
          }
        }
      })
  end

  def update
    if @pathway.update(pathway_params)
      render json: @pathway
    else
      render json: @pathway.errors, status: :unprocessable_entity
    end
  end 

  private
    def set_pathway
      @pathway = Pathway.find(params[:id])
    end

    def pathway_params
      params.require(:pathway).permit(:date, :status)
    end

end
