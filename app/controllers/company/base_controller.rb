class Company::BaseController < ApplicationController
  before_action :authenticate_company!
end
