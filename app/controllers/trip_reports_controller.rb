class TripReportsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @trip_reports = TripReport.all
  end

  def new
    @user = User.new
    @trip_report = TripReport.new
  end

  def create
    @trip_report = TripReport.new(trip_report_params)
    @trip_report.user = current_user
    @trip_report.climb = Climb.find(trip_report_params[:climb_id])

    if @trip_report.save
      strip_whitespace(@trip_report.content)
      redirect_to climb_path(@trip_report.climb)
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

  def trip_report_params
    params.require(:trip_report).permit(:climb_id, :content, :date, :photo)
  end

  def strip_whitespace(input)
    return input.strip!
  end
end
