class Contractor::BaseController < ApplicationController
  before_action :authenticate_employee!
end
