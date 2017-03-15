class DemandesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_demande, only: [:createUpdate, :show, :edit, :update, :destroy, :addParent]

  # GET /demandes
  # GET /demandes.json
  def index
    @demandes = Demande.all
	
	@demandes.each do |d|
		if d.statut == "Non complété" # I'm lovin' it.
			@gardiens = Parent.where(["demande_id = ? AND (statut = ? OR statut = ? OR statut = ?)", d.id, 0, 1, 3])
			@visiteurs = Parent.where(["demande_id = ? AND statut = ?", d.id, 2])
			if (@gardiens + @visiteurs).size >= 2
				d.update_attributes(:statut => "Complété")
			end
		end
	end
  end

  # GET /demandes/1
  # GET /demandes/1.json
  def show
    @gardiens = Parent.where(["demande_id = ? AND (statut = ? OR statut = ? OR statut = ?)", @demande.id, 0, 1, 3])
    @visiteurs = Parent.where(["demande_id = ? AND statut = ?", @demande.id, 2])
  end

  # GET /demandes/new
  def new
  end

  def addParent
    Parent.new()
    
    respond_to do |format|
      format.html { render :edit }
      format.json { render json: @demande, status: :ok }
    end
  end
  
#  def ouverture
#    if Demande.exists?(params[:id])
#      @demande = Demande.find(params[:id])
#    else
#      @demande = Demande.new()
#      @demande.gardien = Parent.new()
#    end
#  end

def ouverture
    if params[:id].nil?
      @demande = Demande.new()
    else
      @demande = Demande.find(params[:id])
    end
  end

  def new
    redirect_to action: "ouverture"
  end

  # GET /demandes/1/edit
  def edit
    @gardiens = Parent.where(["demande_id = ? AND (statut = ? OR statut = ? OR statut = ?)", @demande.id, 0, 1, 3])
    @visiteurs = Parent.where(["demande_id = ? AND statut = ?", @demande.id, 2])
    @parents = @gardiens + @visiteurs
    @enfants = Enfant.where("demande_id = ?", @demande.id)
  end

  # POST /demandes
  # POST /demandes.json
  def create
    @demande = Demande.new(demande_params)
    respond_to do |format|
      if @demande.save
        format.html { redirect_to @demande, notice: 'Demande was successfully updated.' }
        format.json { render json: @demande, status: :created, location: @demande , :layout => false}
	  else
	    format.html { render :new }
      end
    end
  end

  # PATCH/PUT /demandes/1
  # PATCH/PUT /demandes/1.json
  def update
    respond_to do |format|
      if @demande.update(demande_params)
        format.html { redirect_to @demande, notice: 'Demande was successfully updated.' }
        format.json { render :show, status: :ok, location: @demande }
	  else
	    format.html { render :edit }
      end
    end
  end

  # DELETE /demandes/1
  # DELETE /demandes/1.json
  def destroy
    @demande.destroy
    respond_to do |format|
      format.html { redirect_to demandes_url, notice: 'Demande was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demande
      if(!params.has_key?(:id) || params[:id] == 'new')
        @demande = nil
      else
        @demande = Demande.find(params[:id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demande_params
      params.require(:demande).permit(:demande_id, :service, :famille_id, :created_at, :frequence, :statut, :demandeur, :payee_par, :refere_par, :transport, :motif_id, :user_id)
    end
end