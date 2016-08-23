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
    @job_coordinates = { lat:  @job.latitude, lng: @job.longitude }

    # @jobs = JobOffer.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@job) do |job, marker|
      marker.lat job.latitude
      marker.lng job.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end
end
