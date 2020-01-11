class ClimbsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
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
end
