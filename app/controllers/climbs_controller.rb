class ClimbsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_climb, only: [:show, :new, :edit, :update, :create]
  before_action :set_paper_trail_whodunnit

  def index
    if params[:query].present?
    sql_query = " \
        climb.name @@ :query \
        OR climb.trip_report.content @@ :query \
        OR climb.description @@ :query"
      #@climbs = Climb.where(sql_query, query: "%#{params[:query]}%")
      @climbs = Climb.joins(:trip_report).where(sql_query, query: "%#{params[:query]}%")

    else
      @climbs = Climb.all
    end

    if params[:status] && params[:grade]
      @climbs = Climb.where(status: params[:status]).where('grade ILIKE ANY ( array[?] )', params[:grade])
    elsif params[:status]
      @climbs = Climb.where(status: params[:status])
    elsif params[:grade]
      @climbs = Climb.where('grade ILIKE ANY ( array[?] )', params[:grade])
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

  def edit
  end

  def update
    Climb.find(params[:id]).update(description: @climb.description, updated_at: @climb.updated_at)
    if @climb.update(climb_params)
      respond_to do |format|
       format.html { redirect_to edit_climb_path(@climb) }
       format.js { }
     end
    else
      respond_to do |format|
        format.html { render 'climbs/edit' }
        format.js { }
      end
    end
  end


  def show
    @favorite_exists = Favorite.where(climb: @climb, user: current_user) == [] ? false : true
  end

  private

  def set_climb
    @climb = Climb.find(params[:id])
  end

  def climb_params
    params.require(:climb).permit(:name, :region, :description, :grade, :approach, :content, :status, :updated_at, :climb_id, :user)
  end
end
