class DemandeVsController < ApplicationController
  before_action :set_demande_v, only: [:show, :edit, :update, :destroy]

  # GET /demande_vs
  # GET /demande_vs.json
  def index
    @demande_vs = DemandeVs.all
  end

  # GET /demande_vs/1
  # GET /demande_vs/1.json
  def show
  end

  # GET /demande_vs/new
  def new
    @demande_v = DemandeVs.new
  end

  # GET /demande_vs/1/edit
  def edit
  end

  # POST /demande_vs
  # POST /demande_vs.json
  def create
    @demande_v = DemandeVs.new(demande_v_params)

    respond_to do |format|
      if @demande_v.save
        format.html { redirect_to @demande_v, notice: 'Demande vs was successfully created.' }
        format.json { render :show, status: :created, location: @demande_v }
      else
        format.html { render :new }
        format.json { render json: @demande_v.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demande_vs/1
  # PATCH/PUT /demande_vs/1.json
  def update
    respond_to do |format|
      if @demande_v.update(demande_v_params)
        format.html { redirect_to @demande_v, notice: 'Demande vs was successfully updated.' }
        format.json { render :show, status: :ok, location: @demande_v }
      else
        format.html { render :edit }
        format.json { render json: @demande_v.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demande_vs/1
  # DELETE /demande_vs/1.json
  def destroy
    @demande_v.destroy
    respond_to do |format|
      format.html { redirect_to demande_vs_index_url, notice: 'Demande vs was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demande_v
      @demande_v = DemandeVs.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demande_v_params
      params.require(:demande_v).permit(:motif_pv, :motivations_pv, :interdit_contact_pv, :date_separation_pv, :contact_enfant_pv, :contact_telephone_enfant_pv, :attitude_parent_pv, :demande_id, :motif_pg, :date_separation_pg, :date_dernier_contact_pg, :dernier_contact_deroulement_pg, :contact_telephone_enfant_pg, :autorisation_accompagnement_pg, :personnes_autorisees_pg, :attitude_parent_pg, :jeux_favoris_pg, :gout_alimentaire_pg, :enfant_sais_visite_pg, :reaction_visite_pg, :attitude_enfant_pg, :autres_pg)
    end
end
