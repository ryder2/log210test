class DemandeEgsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_demande_eg, only: [:show, :edit, :update, :destroy]

  # GET /demande_egs
  # GET /demande_egs.json
  def index
    @demande_egs = DemandeEg.all
  end

  # GET /demande_egs/1
  # GET /demande_egs/1.json
  def show
  end

  # GET /demande_egs/new
  def new
    @demande_eg = DemandeEg.new
	if params.has_key?(:demande_id)
		@demande_eg.demande_id = params[:demande_id]
	end
  end

  # GET /demande_egs/1/edit
  def edit
  end

  # POST /demande_egs
  # POST /demande_egs.json
  def create
    @demande_eg = DemandeEg.new(demande_eg_params)

    respond_to do |format|
      if @demande_eg.save
        format.html { redirect_to @demande_eg, notice: 'Demande eg was successfully created.' }
        format.json { render :show, status: :created, location: @demande_eg }
      else
        format.html { render :"new" }
      end
    end
  end

  # PATCH/PUT /demande_egs/1
  # PATCH/PUT /demande_egs/1.json
  def update
    respond_to do |format|
      if @demande_eg.update(demande_eg_params)
        format.html { redirect_to @demande_eg, notice: 'Demande eg was successfully updated.' }
        format.json { render :show, status: :ok, location: @demande_eg }
      else
        format.html { render :"edit" }
      end
    end
  end

  # DELETE /demande_egs/1
  # DELETE /demande_egs/1.json
  def destroy
    @demande_eg.destroy
    respond_to do |format|
      format.html { redirect_to demande_egs_url, notice: 'Demande eg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demande_eg
      @demande_eg = DemandeEg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demande_eg_params
      params.require(:demande_eg).permit(:motif, :conditions, :date_separation, :echange_garde, :reactions_eg, :date_dernier_contact, :description_enfant, :contact_pg, :forme_contact_pg, :attitude_parent, :attitude_enfant, :a_suivre, :demande_id)
    end
end
