class Contractor::JobsController < ApplicationController
  #list all the job offer
  def index
    @jobs = JobOffer.all
  end

  def show
    @job = JobOffer.find(params[:id])
  end

end
