class HomeController < ApplicationController
  def index
  	@regiones = Region.all
  end

  def change_region
  	@region = Region.find(params[:region_id])
  	@comunas = @region.comunas
  end

end
