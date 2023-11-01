class HomeController < ApplicationController
  def index
    @org = Organization.all
  end

end
