require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe NotesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Note. As you add validations to Note, be sure to
  # adjust the attributes here as well.
  before { controller.stub(:authenticate_user!).and_return true }
  
  let(:valid_attributes) {
    {texte: "texte", dateCreation: "2011-01-01", famille_id: 1, users_id: 1}
  }

  let(:invalid_attributes) {
    {texte: "texte", dateCreation: nil, famille_id: nil, users_id: nil}
  }


  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # NotesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all notes as @notes" do
      note = Note.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:notes)).to eq([note])
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
	  note = Note.create! valid_attributes
      get 'show', :id => note.id
      response.should be_success
    end
  end

  describe "GET #new" do
    it "assigns a new note as @note" do
      get :new, params: {note: valid_attributes}, session: valid_session
      expect(assigns(:note)).to be_a_new(Note)
    end
  end

  describe "GET #edit" do
    it "assigns the requested note as @note" do
      note = Note.create! valid_attributes
      get 'edit', :id => note.id
      expect(assigns(:note)).to eq(note)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Note" do
        expect {
          post 'create', :note => valid_attributes
        }.to change(Note, :count).by(1)
      end

      it "assigns a newly created note as @note" do
        post 'create', :note => valid_attributes
        expect(assigns(:note)).to be_a(Note)
        expect(assigns(:note)).to be_persisted
      end

      it "redirects to the created note" do
        post 'create', :note => valid_attributes
        expect(response).to redirect_to(famille_path(1))
      end
    end

    context "with invalid params " do
      it "re-renders new" do
        post 'create', :note => invalid_attributes
        expect(response).to render_template :new
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {texte: "texte2", dateCreation: "2012-01-01", famille_id: 2, users_id: 2}
      }

      it "updates the requested note" do
        note = Note.create! valid_attributes
        put 'update', {:id => note.id, :note => new_attributes}
        note.reload
		    expect(note.texte).not_to eq("texte")
      end

      it "assigns the requested note as @note" do
        note = Note.create! valid_attributes
        put 'update', {:id => note.id, :note => valid_attributes}
        expect(assigns(:note)).to eq(note)
      end

      it "redirects to the note" do
        note = Note.create! valid_attributes
        put 'update', {:id => note.id, :note => valid_attributes}
        expect(response).to redirect_to(famille_path(1))
      end
    end
    context "with invalid params" do
        it "re-renders edit" do
          note = Note.create! valid_attributes
          put 'update', {:id => note.id, :note => invalid_attributes}
          expect(response).to render_template :edit
        end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested note" do
      note = Note.create! valid_attributes
      expect {
        delete 'destroy', :id => note.id
      }.to change(Note, :count).by(-1)
    end

    it "redirects to the notes list" do
      note = Note.create! valid_attributes
      delete 'destroy', :id => note.id
      expect(response).to redirect_to(famille_path(1))
    end
  end

end
