class TurmasController < ApplicationController
  before_action :set_turma, only: [:show, :edit, :update, :destroy]
  
  # GET /turmas
  # GET /turmas.json
  def index
    @turmas = Turma.all
  end

  # GET /turmas/1
  # GET /turmas/1.json
  def show
  end

  # GET /turmas/new
  def new
    @turma = Turma.new
  end

  # GET /turmas/1/edit
  def edit
  end

  # POST /turmas
  # POST /turmas.json
  def create
    @turma = Turma.new(turma_params)

    respond_to do |format|
      if @turma.save
        format.html { redirect_to @turma, notice: 'Turma cadastrada com sucesso.' }
        format.json { render action: 'show', status: :created, location: @turma }
      else
        format.html { render action: 'new' }
        format.json { render json: @turma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turmas/1
  # PATCH/PUT /turmas/1.json
  def update
    respond_to do |format|
      if @turma.update(turma_params)
        format.html { redirect_to @turma, notice: 'Turma atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @turma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turmas/1
  # DELETE /turmas/1.json
  def destroy
  respond_to do |format|    
    if @turma.destroy    
      format.html { redirect_to turmas_url }
      format.json { head :no_content }
    else
      format.html { redirect_to turmas_url, notice: 'Erro ao excluir turma: Existem alunos cadastrados nesta turma!'}
    end
  end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turma
      @turma = Turma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def turma_params
      params.require(:turma).permit(:nome)
    end
end
