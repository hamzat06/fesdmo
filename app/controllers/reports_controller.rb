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
    # @report.patient = Patient.find_by(id: params([:patient_id])
    @report = Report.new(report_params)
    @report.doctor = current_doctor
    if @report.save
      flash[:notice] = "report was successfully created!"
      redirect_to @report
    else
      flash[:alert] = "Error creating report"
      render 'new'
    end
  end

  def edit
  end

  def update
    if @report.update(report_params)
      flash[:notice] = "report profile was successfully updated!"
      redirect_to @report
    else
      flash[:alert] = "Error updating report"
      render 'new'
    end
  end

  def destroy
    if @report.destroy
      flash[:notice] = "report profile was successfully destroyed!"
      redirect_to reports_path
    else
      flash[:alert] = "Error destroying report"
      redirect_to @report
    end
  end

  private
    
    def set_report
      @report = Report.find(params[:id])
    end

    def report_params
      params.require(:report).permit(:patient_id, :obesity, :degree, :recommendation, :prescription)
    end

    
end