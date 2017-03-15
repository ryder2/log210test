class ParentinfosController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_parentinfo, only: [:show, :edit, :update, :destroy]

  # GET /parentinfos
  # GET /parentinfos.json
  def index
    @parentinfos = Parentinfo.all
  end

  # GET /parentinfos/1
  # GET /parentinfos/1.json
  def show
  end

  # GET /parentinfos/new
  def new
     @parentinfo = Parentinfo.new

  end

  # GET /parentinfos/1/edit
  def edit
  end

  # POST /parentinfos
  # POST /parentinfos.json
  def create
      @parentinfo = Parentinfo.new(parentinfo_params)

      respond_to do |format|
        if @parentinfo.save
          format.html { redirect_to @parentinfo, notice: 'Parentinfo was successfully created.' }
          format.json { render :show, status: :created, location: @parentinfo }
		else
			format.html { render :new }
        end
      end
  end

  # PATCH/PUT /parentinfos/1
  # PATCH/PUT /parentinfos/1.json
  def update
    respond_to do |format|
      if @parentinfo.update(parentinfo_params)
        format.html { redirect_to @parentinfo, notice: 'Parentinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @parentinfo }
	  else
		format.html { render :edit }
      end
    end
  end

  # DELETE /parentinfos/1
  # DELETE /parentinfos/1.json
  def destroy
    @parentinfo.destroy
    respond_to do |format|
      format.html { redirect_to parentinfos_url, notice: 'Parentinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parentinfo
      @parentinfo = Parentinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parentinfo_params
      params.require(:parentinfo).permit(:courriel, :telephone_res, :nocivique, :rue, :appartement, 
                                          :ville, :code_postal, :province, :nom_urgence, 
                                          :numero_urgence, :note, :parent_id)
    end
end
