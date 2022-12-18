class HomeController < ApplicationController
  def index
    @ceremonies = Ceremony.all
  end
end
