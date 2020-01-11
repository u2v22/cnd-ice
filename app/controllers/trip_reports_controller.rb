class TripReportsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_climb, only: [:new, :create]

  def index
    @trip_reports = TripReport.all
  end

  def new
    @user = User.new
    @trip_report = TripReport.new
    @climb = Climb.find(params[:climb_id])
  end

  def create
    @trip_report = TripReport.new(trip_report_params)
    @trip_report.climb = @climb
    @trip_report.user = current_user
    if @trip_report.save
      redirect_to climb_path(@climb)
    else
      render :new
    end
  end

  def destroy
    @trip_report = TripReport.find(params[:id])
    @trip_report.destroy
    redirect_to climb_path(@trip_report.climb_id)
  end

  private

  def set_climb
    @climb = Climb.find(params[:climb_id])
  end

  def trip_report_params
    params.require(:trip_report).permit(:content, :date, :photo)
  end
end
