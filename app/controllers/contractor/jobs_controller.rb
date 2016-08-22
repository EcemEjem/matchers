class Contractor::JobsController < ApplicationController
  #list all the job offer
  def index
    @a = 1
    # raise
    @jobs = JobOffer.all

    if params[:location].present?
      @jobs = @jobs.where(city: params[:location])
    end
  end

  def show
    @job = JobOffer.find(params[:id])
  end

end
