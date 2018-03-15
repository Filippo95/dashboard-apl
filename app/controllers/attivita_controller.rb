class AttivitaController < ApplicationController
  before_action :set_attivitum, only: [:show, :edit, :update, :destroy]

  # GET /attivita
  # GET /attivita.json
  def index
    @attivita = Attivitum.all
  end

  # GET /attivita/1
  # GET /attivita/1.json
  def show
  end

  # GET /attivita/new
  def new
    @attivitum = Attivitum.new
  end

  # GET /attivita/1/edit
  def edit
  end

  # POST /attivita
  # POST /attivita.json
  def create
    @attivitum = Attivitum.new(attivitum_params)

    respond_to do |format|
      if @attivitum.save
        format.html { redirect_to @attivitum, notice: 'Attivitum was successfully created.' }
        format.json { render :show, status: :created, location: @attivitum }
      else
        format.html { render :new }
        format.json { render json: @attivitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attivita/1
  # PATCH/PUT /attivita/1.json
  def update
    respond_to do |format|
      if @attivitum.update(attivitum_params)
        format.html { redirect_to @attivitum, notice: 'Attivitum was successfully updated.' }
        format.json { render :show, status: :ok, location: @attivitum }
      else
        format.html { render :edit }
        format.json { render json: @attivitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attivita/1
  # DELETE /attivita/1.json
  def destroy
    @attivitum.destroy
    respond_to do |format|
      format.html { redirect_to attivita_url, notice: 'Attivitum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attivitum
      @attivitum = Attivitum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attivitum_params
      params.require(:attivitum).permit(:data, :titolo, :luogo, :descrizione)
    end
end
