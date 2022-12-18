class HomeController < ApplicationController
  def index
    @cerimonies = Ceremony.all
  end
end
