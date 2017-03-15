class VsDemandesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_vs_demande, only: [:show, :edit, :update, :destroy]

  # GET /vs_demandes
  # GET /vs_demandes.json
  def index
    @vs_demandes = VsDemande.all
  end

  # GET /vs_demandes/1
  # GET /vs_demandes/1.json
  def show
  end

  # GET /vs_demandes/new
  def new
    @vs_demande = VsDemande.new
	if params.has_key?(:demande_id)
		@vs_demande.demande_id = params[:demande_id]
	end
  end

  # GET /vs_demandes/1/edit
  def edit
  end

  # POST /vs_demandes
  # POST /vs_demandes.json
  def create
    @vs_demande = VsDemande.new(vs_demande_params)

    respond_to do |format|
      if @vs_demande.save
        format.html { redirect_to @vs_demande, notice: 'Vs demande was successfully created.' }
        format.json { render :show, status: :created, location: @vs_demande }
        else
        format.html { render :"new" }
      end
    end
  end

  # PATCH/PUT /vs_demandes/1
  # PATCH/PUT /vs_demandes/1.json
  def update
    respond_to do |format|
      if @vs_demande.update(vs_demande_params)
        format.html { redirect_to @vs_demande, notice: 'Vs demande was successfully updated.' }
        format.json { render :show, status: :ok, location: @vs_demande }
      else
        format.html { render :"edit" }
      end
    end
  end

  # DELETE /vs_demandes/1
  # DELETE /vs_demandes/1.json
  def destroy
    @vs_demande.destroy
    respond_to do |format|
      format.html { redirect_to vs_demandes_url, notice: 'Vs demande was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vs_demande
      @vs_demande = VsDemande.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vs_demande_params
      params.require(:vs_demande).permit(:motif_pv, :motivations_pv, :interdit_contact_pv, :date_separation_pv, :contact_enfant_pv, :contact_telephone_enfant_pv, :attitude_parent_pv, :demande_id, :motif_pg, :date_separation_pg, :date_dernier_contact_pg, :dernier_contact_deroulement_pg, :contact_telephone_enfant_pg, :autorisation_accompagnement_pg, :personnes_autorisees_pg, :attitude_parent_pg, :jeux_favoris_pg, :gout_alimentaire_pg, :enfant_sait_visite_pg, :reaction_visite_pg, :attitude_enfant_pg, :autre_pg)
    end
end
