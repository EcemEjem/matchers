class Contractor::JobsController < ApplicationController

  def index
    @jobs = JobOffer.all
  end

  def show
    @job = JobOffer.find(params[:id])
  end

end
