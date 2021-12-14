class DoctorsController < ApplicationController
  before_action :require_doctor, only: [:destroy, :edit, :update, :show, :index]
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]

  def index
    @doctors = Doctor.all
  end

  def show
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if  @doctor.save
      flash[:notice] = "Doctor profile was successfully created!"
      redirect_to doctors_path
    else
      flash[:alert] = "Error creating Doctor profile"
      render 'new'
    end
  end

  def edit
  end

  def update
    if @doctor.update(doctor_params)
      flash[:notice] = "Doctor profile was successfully updated!"
      redirect_to @doctor
    else
      flash[:alert] = "Error updating Doctor profile"
      render 'edit'
    end
  end

  def destroy
    if @doctor.destroy
      if @doctor == current_doctor
        session[:doctor_id] = nil
        flash[:notice] = "You have successfully destroyed your profile!"
        redirect_to root_path
      else
        flash[:notice] = "Doctor profile was successfully destroyed!"
        redirect_to root_path
      end
    else
      flash[:alert] = "Error destroying Doctor profile"
    end
  end

  private
    
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    def doctor_params
      params.require(:doctor).permit(:name)
    end

    
end