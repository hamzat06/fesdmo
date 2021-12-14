class PatientsController < ApplicationController
  before_action :require_doctor
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  def index
    @patients = Patient.all
  end

  def show
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    @patient.doctor = current_doctor
    if  @patient.save
      flash[:notice] = "Patient profile was successfully created!"
      redirect_to patients_path
    else
      flash[:alert] = "Error creating patient profile"
      render 'new'
    end
  end

  def edit
  end

  def update
    @patient.doctor = current_doctor
    if @patient.update(patient_params)
      flash[:notice] = "Patient profile was successfully updated!"
      redirect_to @patient
    else
      flash[:alert] = "Error updating patient profile"
      render 'edit'
    end
  end

  def destroy
    if @patient.destroy
      flash[:notice] = "Patient profile was successfully destroyed!"
    else
      flash[:alert] = "Error destroying patient profile"
    end
  end

  private
    
    def set_patient
      @patient = Patient.find(params[:id])
    end

    def patient_params
      params.require(:patient).permit(:surname, :gender, :marital_status, :phone_number, :date_of_birth, :address, :email, :occupation, :religion, :next_of_kin, :other_names)
    end

    
end