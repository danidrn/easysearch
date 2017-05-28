class PesquisaModelsController < ApplicationController
  before_action :set_pesquisa_model, only: [:show, :edit, :update, :destroy]

  # GET /pesquisa_models
  # GET /pesquisa_models.json
  def index
    @pesquisa_models = PesquisaModel.all
  end

  # GET /pesquisa_models/1
  # GET /pesquisa_models/1.json
  def show
  end

  # GET /pesquisa_models/new
  def new
    @pesquisa_model = PesquisaModel.new
  end

  # GET /pesquisa_models/1/edit
  def edit
  end

  # POST /pesquisa_models
  # POST /pesquisa_models.json
  def create
    @pesquisa_model = PesquisaModel.new(pesquisa_model_params)

    respond_to do |format|
      if @pesquisa_model.save
        format.html { redirect_to @pesquisa_model, notice: 'Pesquisa model was successfully created.' }
        format.json { render :show, status: :created, location: @pesquisa_model }
      else
        format.html { render :new }
        format.json { render json: @pesquisa_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pesquisa_models/1
  # PATCH/PUT /pesquisa_models/1.json
  def update
    respond_to do |format|
      if @pesquisa_model.update(pesquisa_model_params)
        format.html { redirect_to @pesquisa_model, notice: 'Pesquisa model was successfully updated.' }
        format.json { render :show, status: :ok, location: @pesquisa_model }
      else
        format.html { render :edit }
        format.json { render json: @pesquisa_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pesquisa_models/1
  # DELETE /pesquisa_models/1.json
  def destroy
    @pesquisa_model.destroy
    respond_to do |format|
      format.html { redirect_to pesquisa_models_url, notice: 'Pesquisa model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pesquisa_model
      @pesquisa_model = PesquisaModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pesquisa_model_params
      params.require(:pesquisa_model).permit(:titulo, :descricao, :publico_alvo, :data_limite, :link)
    end
end
