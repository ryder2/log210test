class MotifsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_motif, only: [:show, :edit, :update, :destroy]

  # GET /motifs
  # GET /motifs.json
  def index
    @motifs = Motif.all
  end

  # GET /motifs/1
  # GET /motifs/1.json
  def show
  end

  # GET /motifs/new
  def new
    @motif = Motif.new
  end

  # GET /motifs/1/edit
  def edit
  end

  # POST /motifs
  # POST /motifs.json
  def create
    @motif = Motif.new(motif_params)

    respond_to do |format|
      if @motif.save
        format.html { redirect_to @motif, notice: 'Motif was successfully created.' }
        format.json { render :show, status: :created, location: @motif }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /motifs/1
  # PATCH/PUT /motifs/1.json
  def update
    respond_to do |format|
      if @motif.update(motif_params)
        format.html { redirect_to @motif, notice: 'Motif was successfully updated.' }
        format.json { render :show, status: :ok, location: @motif }
      end
    end
  end

  # DELETE /motifs/1
  # DELETE /motifs/1.json
  def destroy
    @motif.destroy
    respond_to do |format|
      format.html { redirect_to motifs_url, notice: 'Motif was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motif
      @motif = Motif.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def motif_params
      params.require(:motif).permit(:nom)
    end
end
