class Contractor::JobsController < ApplicationController
  #list all the job offer
  def index
    if params[:location] != ""
      @jobs = JobOffer.where(city: params[:location])
    else
      @jobs = JobOffer.all
    end
  end

  def show
    @job = JobOffer.find(params[:id])
  end

end
