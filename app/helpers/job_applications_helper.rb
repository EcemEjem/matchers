module JobApplicationsHelper

  def unread_job_offer_applications_count(job_offer)
    job_offer.job_applications.where(read_at: nil).count
  end

  def unread_job_offer_applications(job_offer)
    job_offer.job_applications.where(read_at: nil)
  end

  def read_job_offer_applications(job_offer)
    job_offer.job_applications.where.not(read_at: nil)
  end

end
