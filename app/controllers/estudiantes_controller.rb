class EstudiantesController < ApplicationController
  before_action :set_estudiante, only: %i[ show ]

  # GET /estudiantes or /estudiantes.json
  def index
    @regiones = Region.all
    @cursos = Curso.all
    @estudiantes = Estudiante.search(params[:region], params[:codigo])
    @dumps = params
  end

  # GET /estudiantes/1 or /estudiantes/1.json
  def show
  end

  private 
    def set_estudiante
      @estudiante = Estudiante.find(params[:id])
    end  
    # Only allow a list of trusted parameters through.
    def estudiante_params
      params.require(:estudiante).permit(:rut, :nombre, :apellido_mat, :apellido_pat, :direccion, :comuna_id, :curso_id, :region, :codigo)
    end
end
