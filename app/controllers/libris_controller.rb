class LibrisController < ApplicationController
  before_action :set_libri, only: [:show, :edit, :update, :destroy]

  # GET /libris
  # GET /libris.json
  def index
    @libris = Libri.all
  end

  # GET /libris/1
  # GET /libris/1.json
  def show
  end

  # GET /libris/new
  def new
    @libri = Libri.new
  end

  # GET /libris/1/edit
  def edit
  end

  # POST /libris
  # POST /libris.json
  def create
    @libri = Libri.new(libri_params)

    respond_to do |format|
      if @libri.save
        format.html { redirect_to @libri, notice: 'Libri was successfully created.' }
        format.json { render :show, status: :created, location: @libri }
      else
        format.html { render :new }
        format.json { render json: @libri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /libris/1
  # PATCH/PUT /libris/1.json
  def update
    respond_to do |format|
      if @libri.update(libri_params)
        format.html { redirect_to @libri, notice: 'Libri was successfully updated.' }
        format.json { render :show, status: :ok, location: @libri }
      else
        format.html { render :edit }
        format.json { render json: @libri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libris/1
  # DELETE /libris/1.json
  def destroy
    @libri.destroy
    respond_to do |format|
      format.html { redirect_to libris_url, notice: 'Libri was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_libri
      @libri = Libri.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def libri_params
      params.require(:libri).permit(:titolo, :prezzo)
    end
end
