class SessionsController < ApplicationController

  def new
  end

  def create
    doctor = Doctor.find_by(name: params[:session][:name].downcase)
    if doctor
      session[:doctor_id] = doctor.id
      flash[:notice] = "You have successfully logged in"
      redirect_to root_path
    else
      flash.now[:alert] = "Your login credential is incorrect"
      render 'new'
    end
  end

  def destroy
    session[:doctor_id] = nil
    flash[:notice] = "Logged out successfully"
    redirect_to root_path
  end

end