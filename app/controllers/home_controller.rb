class HomeController < ApplicationController
  before_action :authenticate_client_devise!
  def index
  end
end
