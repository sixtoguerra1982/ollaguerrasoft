class EventosController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_evento, only: [:show, :edit, :update, :destroy]

  # GET /eventos
  # GET /eventos.json
  def index
    @eventos = Evento.all.order(:comuna_id)
    authorize @eventos
  end

  # GET /eventos/1
  # GET /eventos/1.json
  def show
    @eventos = Evento.where(id: params[:id])
  end

  # GET /eventos/new
  def new
    @evento = Evento.new
    authorize @evento
  end

  # GET /eventos/1/edit
  def edit
  end

  # POST /eventos
  # POST /eventos.json
  def create
    @evento = Evento.new(evento_params)
    @evento.user = current_user
    authorize @evento
    respond_to do |format|
      if @evento.save
        format.html { redirect_to @evento, notice: 'Evento was successfully created.' }
        format.json { render :show, status: :created, location: @evento }
      else
        format.html { render :new }
        format.json { render json: @evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eventos/1
  # PATCH/PUT /eventos/1.json
  def update
    respond_to do |format|
      if @evento.update(evento_params)
        format.html { redirect_to @evento, notice: 'Evento was successfully updated.' }
        format.json { render :show, status: :ok, location: @evento }
      else
        format.html { render :edit }
        format.json { render json: @evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eventos/1
  # DELETE /eventos/1.json
  def destroy
    @evento.destroy
    respond_to do |format|
      if current_user.admin?
        format.html { redirect_to eventos_url, notice: 'Evento was successfully destroyed.' }
      else
        format.html { redirect_to new_evento_url, notice: 'Evento was successfully destroyed.' }
      end
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evento
      @evento = Evento.find(params[:id])
      authorize @evento
    end

    # Only allow a list of trusted parameters through.
    def evento_params
      params.require(:evento).permit(:comuna_id, :descripcion, :organizacion, :encargado, :direccion, :dias_horarios, :organizador, :photo)
    end
end
