class SearchController < ApplicationController
  def index
    service = NrelService.new
    @stations = service.stations(params[:q])
  end
end
