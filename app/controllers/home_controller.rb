class HomeController < ApplicationController
  def index
  	if params[:comuna].present? || params[:region].present?
      if params[:comuna].present?
        @comuna = Comuna.find(params[:comuna].to_i)
        @eventos = Evento.all.where(comuna_id: params[:comuna].to_i)
        params[:region] = @comuna.region.id
      else
        @region = Region.find(params[:region].to_i)
        @comunas = @region.comunas
        @eventos = @region.eventos
      end
      @cantidad = @eventos.count
  	else
  		@eventos = Evento.all
  	end
    @regiones = Region.all
  end

  def change_region
  	@region = Region.find(params[:region_id])
  	@comunas = @region.comunas
  end

end
