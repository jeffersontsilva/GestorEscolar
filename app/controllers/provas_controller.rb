class ProvasController < ApplicationController
  #before_action :set_prova, only: [:show, :edit, :update]
  before_filter :get_aluno

  # GET /provas
  # GET /provas.json
  def index
    @provas = @aluno.provas
    @media = @provas.average(:valor)

    if @aluno.provas.count == 4
      if @media >= 6
        @status = 'Aprovado'
      else
        @status = 'Reprovado'
      end
    else
      @status = 'Matriculado'
    end
  

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @provas }
    end
  end

  # GET /provas/1
  # GET /provas/1.json
  def show
    @prova = @aluno.provas.find(params[:id])

    if params[:aluno_id]
      @aluno = Aluno.where(:id => params[:id].first)
      @provas = aluno_prova_path
    else
      @provas = Provas.all
  end
  
  respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prova }
    end
  end

  # GET /provas/new
  def new
    @prova = @aluno.provas.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prova }
    end
  end

  # GET /provas/1/edit
  def edit
    @prova = @aluno.provas.find(params[:id])
  end

  # POST /provas
  # POST /provas.json
  def create
    @prova = @aluno.provas.new(params[:prova])

    respond_to do |format|
      if @prova.save
        format.html { redirect_to(aluno_prova_url(@aluno, @prova), notice: 'Nota cadastrada com sucesso.') }
        format.json { render json: [@aluno, @nota], status: :created, location: [@aluno, @prova] }
      else
        format.html { render action: 'new' }
        format.json { render json: @prova.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /provas/1
  # PATCH/PUT /provas/1.json
  def update
    @prova = Prova.find(params[:id])

    respond_to do |format|
      if @prova.update_attributes(params[:prova])
        format.html { redirect_to(aluno_prova_url(@aluno, @prova), notice: 'Nota atualizada com sucesso.') }
        format.json { head :no_content } 
      else
        format.html { render action: 'edit' }
        format.json { render json: @prova.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prova
      @prova = Prova.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prova_params
      params.require(:prova).permit(:aluno_id, :descricao, :valor)
    end

    def get_aluno
      @aluno = Aluno.find params[:aluno_id]
    end
end
