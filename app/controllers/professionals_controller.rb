class ProfessionalsController < ApplicationController
  def index
     @professionals = Professional.all
  end

  def show
    @professional = Professional.find(params[:id])
  end

  def new
    @professional = Professional.new
  end

  def create
    @professional = Professional(professional_params)

    redirect_to professionals_path
  end

  def edit
    @professional = Professional.find(params[:id])
  end

  def update
    @professional = Professional.find(params[:id])
    @professional.update(professional_params)

    redirect_to professional_path(professional)
  end

  def destroy
    @professional = Professional.find(params[:id])
    @professional.destroy
  end

    redirect_to professionals_path

  private

  def professional_params
    params.require(:professional).permit(:nombre, :telefono, :profesion_u_oficio, :servicios_ofrecidos)
  end

  def current_professional
    @professional = Professional.find(params[:id])
  end
end
