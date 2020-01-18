class TripReportsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_trip_report, only: [:edit, :update, :destroy]

  def index
    @trip_reports = TripReport.all.order(date: :desc)
  end

  def new
    @user = User.new
    @trip_report = TripReport.new
  end

  def create
    @trip_report = TripReport.new(trip_report_params)
    @trip_report.user_id = current_user.id
    @trip_report.climb = Climb.find(trip_report_params[:climb_id])
    Climb.find(trip_report_params[:climb_id]).update(status: @trip_report.status)
    if @trip_report.save
      redirect_to climb_path(@trip_report.climb)
    else
      render :new
    end
  end

  def edit
  end

  def update
    Climb.find(trip_report_params[:climb_id]).update(status: @trip_report.status)
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
    params.require(:trip_report).permit(:climb_id, :content, :date, :photo, :user_id, :date, :status)
  end
end
