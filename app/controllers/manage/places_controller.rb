class Manage::PlacesController < Manage::ApplicationController

  def new
    @place = Place.new
  end

end
