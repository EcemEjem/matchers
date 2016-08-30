class RegistrationsController < Device::RegistrationsController
  def sign_up_params
     params.require(:company).permit(:name, :industry, :description, :photo, :photo_cache)
  end

end
