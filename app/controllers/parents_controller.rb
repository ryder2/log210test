class ParentsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_parent, only: [:show, :edit, :update, :destroy]

  # GET /parents
  # GET /parents.json
  def index
    @parents = Parent.all
  end

  # GET /parents/1
  # GET /parents/1.json
  def show
  end

  # GET /parents/new
  def new
    @parent = Parent.new
    @parent.parentinfos.build
  end

  # GET /parents/1/edit
  def edit
  end

  # POST /parents
  # POST /parents.json
  def create
    @parent = Parent.new(parent_params)

    respond_to do |format|
      if @parent.save
        format.html { redirect_to @parent, notice: 'Parent was successfully created.' }
        format.json { render @parent, status: :created, location: @parent }
      else
        format.html { render :new }
        format.json { render json: @parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parents/1
  # PATCH/PUT /parents/1.json
  def update
    respond_to do |format|
      if @parent.update(parent_params)
        format.html { redirect_to @parent, notice: 'Parent was successfully updated.' }
        format.json { render :show, status: :ok, location: @parent }
      else
        format.html { render :edit }
        format.json { render json: @parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parents/1
  # DELETE /parents/1.json
  def destroy
    @parent.destroy
    respond_to do |format|
      format.html { redirect_to parents_url, notice: 'Parent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent
      @parent = Parent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.

    def parent_params
      if params[:parent][:statut] == "gardien"
        params[:parent][:statut] = 0
      elsif params[:parent][:statut] == "tuteur"
        params[:parent][:statut] = 1
      elsif params[:parent][:statut] == "visiteur"
        params[:parent][:statut] = 2
      elsif params[:parent][:statut] == "acceuil"
        params[:parent][:statut] = 3
      end
      if !@parent.nil?
        @lastParentInfos = Parentinfo.where("parent_id = ? AND created_at = (SELECT MAX(created_at) FROM parentinfos WHERE parent_id = ?)", @parent.id, @parent.id)
      end

      if @lastParentInfos.nil? ||
        @lastParentInfos[0].courriel != params[:parent][:parentinfos_attributes]["0"][:courriel] ||
        @lastParentInfos[0].telephone_res != params[:parent][:parentinfos_attributes]["0"][:telephone_res] ||
        @lastParentInfos[0].nocivique != params[:parent][:parentinfos_attributes]["0"][:nocivique] ||
        @lastParentInfos[0].rue != params[:parent][:parentinfos_attributes]["0"][:rue] ||
        @lastParentInfos[0].appartement != params[:parent][:parentinfos_attributes]["0"][:appartement] ||
        @lastParentInfos[0].ville != params[:parent][:parentinfos_attributes]["0"][:ville] ||
        @lastParentInfos[0].code_postal != params[:parent][:parentinfos_attributes]["0"][:code_postal] ||
        @lastParentInfos[0].province != params[:parent][:parentinfos_attributes]["0"][:province] ||
        @lastParentInfos[0].nom_urgence != params[:parent][:parentinfos_attributes]["0"][:nom_urgence] ||
        @lastParentInfos[0].numero_urgence != params[:parent][:parentinfos_attributes]["0"][:numero_urgence] ||
        @lastParentInfos[0].note != params[:parent][:parentinfos_attributes]["0"][:note]

        params.require(:parent).permit(:statut, :date_naissance, :nom, :demande_id, :parentinfos_attributes => 
                                      [:courriel, :telephone_res, :nocivique, :rue, :appartement, 
                                        :ville, :code_postal, :province, :nom_urgence, 
                                        :numero_urgence, :note, :parent_id])
      else
        params.require(:parent).permit(:statut, :date_naissance, :nom, :demande_id)
      end

    end
end
