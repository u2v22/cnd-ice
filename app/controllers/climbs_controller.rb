class ClimbsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_climb, only: [:show, :new, :create]

  def index

    if params[:status]

      params[:status].each do |value|
        @climbs = Climb.where(status: value)
      end
    else
      @climbs = Climb.where.not(latitude: nil, longitude: nil)
    end
    @markers = @climbs.map do |climb|
      {
        lat: climb.latitude,
        lng: climb.longitude,
        infoWindow: render_to_string(partial: "card_window_popup", locals: { climb: climb })
      }
    end
  end

  def show
  end

  private

  def set_climb
    @climb = Climb.find(params[:id])
  end

  def climb_params
    params.require(:climb, :trip_report).permit(:name, :region, :description, :grade, :approach, :content, :status)
  end
end
