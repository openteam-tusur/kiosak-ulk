class Manage::PlacesController < Manage::ApplicationController
  before_action :find_item, only: [:destroy, :update, :edit]

  def index
    @places = Place.order("number DESC").all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    respond_to do |format|
      if @place.save
        format.html { redirect_to manage_places_path, notice: "Аудитория добавлена" }
      else
        format.html { render "new" }
      end
    end
  end

  def edit
  end

  def update
    if @place.update(place_params)
      redirect_to manage_places_path, notice: "Данные аудитории обновлены!"
    end
  end

  def destroy
    @place.destroy

    redirect_to manage_places_path, notice: "Аудитория удалена!"
  end

  private

  def find_item
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:number)
  end
end
