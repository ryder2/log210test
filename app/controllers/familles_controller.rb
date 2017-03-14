class FamillesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_famille, only: [:show, :edit, :update, :destroy]

  # GET /familles
  # GET /familles.json
  def index
    @familles = Famille.all
  end

  # GET /familles/1
  # GET /familles/1.json
  def show
    @user = current_user
  end

  # GET /familles/new
  def new
    @famille = Famille.new
  end

  # GET /familles/1/edit
  def edit
  end

  # POST /familles
  # POST /familles.json
  def create
    @famille = Famille.new(famille_params)

    respond_to do |format|
      if @famille.save
        format.html { redirect_to @famille, notice: 'Famille was successfully created.' }
        format.json { render :show, status: :created, location: @famille }
      end
    end
  end

  # PATCH/PUT /familles/1
  # PATCH/PUT /familles/1.json
  def update
    respond_to do |format|
      if @famille.update(famille_params)
        format.html { redirect_to @famille, notice: 'Famille was successfully updated.' }
        format.json { render :show, status: :ok, location: @famille }
      end
    end
  end

  def rechercher

    typeDeRecherche = params[:typeDeRecherche]
    valeurDeRecherche  = params[:valeurDeRecherche]

    case typeDeRecherche 
      when "1"
         string = 'SELECT familles.id, familles.nom FROM familles 
                  LEFT JOIN demandes ON demandes.famille_id = dossier_id
                  WHERE TRUE
                  AND demandes.id='+valeurDeRecherche

      when "2"
         string = "SELECT familles.id, familles.nom FROM familles 
                  LEFT JOIN demandes ON demandes.famille_id = dossier_id
                  LEFT JOIN parents AS parent on demandes.id = parent.demande_id 
                  WHERE TRUE 
                  AND parent.nom='"+valeurDeRecherche+"'"

      when "3"
         #À completer, table référent n'existe pas encore + requête
      when "4"
        string = "SELECT familles.id, familles.nom FROM familles 
                  LEFT JOIN demandes ON demandes.famille_id = dossier_id 
                  LEFT JOIN enfants AS enfant ON demandes.id = enfant.demande_id
                  WHERE TRUE
                  AND enfant.nom='"+ valeurDeRecherche +"'"
    end

    connection = Demande.connection
    array = connection.select_all(string)
    respond_to do |format|
      format.json { render json: array, status: :ok }
    end
  end


  # DELETE /familles/1
  # DELETE /familles/1.json
  def destroy
    string = "DELETE FROM notes WHERE famille_id = #{@famille.id}"
    connection = Demande.connection
    connection.delete(string)
    @famille.destroy
    respond_to do |format|
      format.html { redirect_to familles_url, notice: 'Famille was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_famille
      @famille = Famille.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def famille_params
      params.require(:famille).permit(:nom, :id, :dossier_id)
    end
end
