class ServiciosController < ApplicationController
  def index
    @servicios = Servicio.all
  end

  def show
    @servicio = Servicio.find(params[:id])
  end

  def new
    @servicio = Servicio.new
  end

  def created
    servicio = Servicio.create(dog_params)

    redirect_to servicios_path
  end

  def edit
    @servicio = Servicio.find(params[:id])
  end

  def update
    @servicio = Servicio.find(params[:id])

    @servicio.update(dog_params)

    redirect_to servicio_path(@servicio)
  end

  def destroy
    @servicio = Servicio.find(params[:id])

    @servicio.destroy

    redirect_to servicios_path
  end

  private

  def servicio_params
    params.require(:servicio).permit(:profesional, :descripcion)
  end


end
