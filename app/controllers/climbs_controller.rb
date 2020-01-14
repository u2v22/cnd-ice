require 'json'
require 'open-uri'

class ClimbsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_climb, only: [:show, :new, :create]

  def index
    @climbs = Climb.where.not(latitude: nil, longitude: nil)

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

  def get_avi


  end

  private

  def set_climb
    @climb = Climb.find(params[:id])
  end

  def climb_params
    params.require(:climb, :trip_report).permit(:name, :region, :description, :grade, :approach, :content)
  end

  def avi
    uri = URI("https://avalanche.ca/api/forecasts/#{@climb.region}/json")
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)
    alpine_forecast = data['dangerRatings'][0]['dangerRating'][0]['alp'].chr
    treeline_forecast = data['dangerRatings'][0]['dangerRating'][0]['tln'].chr
    below_tree_forecast = data['dangerRatings'][0]['dangerRating'][0]['btl'].chr
    @climb.avi = "api/forecasts/graphics/#{alpine_forecast}/#{treeline_forecast}/#{below_tree_forecast}/danger-rating-icon.svg"
  end
end

# https://www.avalanche.ca/api/forecasts/little-yoho.json
