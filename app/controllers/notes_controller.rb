class NotesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  # GET /notes
  # GET /notes.json
  def index
    @notes = Note.all
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
  end

  # GET /notes/new
  def new
    @note = Note.new
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes
  # POST /notes.json
  def create
    @note = Note.new(note_params)
    @note.dateCreation = Time.now
      if @note.save
        redirect_to famille_path(@note.famille_id)
      end
  end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  def update
      if @note.update(note_params)
        redirect_to famille_path(@note.famille_id)
      end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note.destroy
    redirect_to famille_path(@note.famille_id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params[:note][:createur] = params[:note][:createur].to_i
      params.require(:note).permit(:texte, :dateCreation, :famille_id, :users_id)
    end
end
