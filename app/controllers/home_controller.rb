class HomeController < ApplicationController
  def index
  	@regiones = Region.all
  	if params[:search].present?
      @comuna = Comuna.find(params[:search].to_i)
  		@eventos = Evento.all.where(comuna_id: params[:search].to_i)
      @cantidad = @eventos.count
  	else
  		@eventos = Evento.all.order(updated_at: :desc)
  	end
  end

  def change_region
  	@region = Region.find(params[:region_id])
  	@comunas = @region.comunas
  end

end
