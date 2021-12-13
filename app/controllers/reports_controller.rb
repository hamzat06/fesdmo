class ReportsController < ApplicationController
  before_action :require_doctor
  before_action :set_report, only: [:show, :edit, :update, :destroy]

  def index
    @reports = Report.all
  end

  def show
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      flash[:notice] = "report profile was successfully created!"
    else
      flash[:alert] = "Error creating report profile"
    end
  end

  def edit
  end

  def update
    if @report.update(report_params)
      flash[:notice] = "report profile was successfully updated!"
    else
      flash[:alert] = "Error updating report profile"
    end
  end

  def destroy
    if @report.destroy
      flash[:notice] = "report profile was successfully destroyed!"
    else
      flash[:alert] = "Error destroying report profile"
    end
  end

  private
    
    def set_report
      @report = Report.find(params[:id])
    end

    def report_params
      params.require(:report).permit(:patient_id, :obesity, :degree, :recomendation, :prescription)
    end

    
end