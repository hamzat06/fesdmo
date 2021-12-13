class StaticController < ApplicationController
  before_action :require_doctor
  def home
  end
end