class TripReportsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_trip_report, only: [:edit, :update, :destroy]

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
      redirect_to climb_path(@trip_report.climb)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @trip_report.update(trip_report_params)
      redirect_to climb_path(@trip_report.climb)
    else
      render :edit
    end
  end

  def destroy
    @trip_report.destroy
    redirect_to climb_path(@trip_report.climb_id)
  end

  private

  def set_trip_report
    @trip_report = TripReport.find(params[:id])
  end

  def trip_report_params
    params.require(:trip_report).permit(:climb_id, :content, :date, :photo, :user, :date)
  end
end
