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

RSpec.describe MotifsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Motif. As you add validations to Motif, be sure to
  # adjust the attributes here as well.
  before { controller.stub(:authenticate_user!).and_return true }
  
  let(:valid_attributes) {
	{nom: "MyString"}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MotifsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all motifs as @motifs" do
      motif = Motif.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:motifs)).to eq([motif])
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
	  motif = Motif.create! valid_attributes
      get 'show', :id => motif.id
      response.should be_success
    end
  end

  describe "GET #new" do
    it "assigns a new motif as @motif" do
      get :new, params: {}, session: valid_session
      expect(assigns(:motif)).to be_a_new(Motif)
    end
  end

  describe "GET #edit" do
    it "assigns the requested motif as @motif" do
      motif = Motif.create! valid_attributes
      get 'edit', :id => motif.id
      expect(assigns(:motif)).to eq(motif)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Motif" do
        expect {
          post 'create', :motif => valid_attributes
        }.to change(Motif, :count).by(1)
      end

      it "assigns a newly created motif as @motif" do
        post 'create', :motif => valid_attributes
        expect(assigns(:motif)).to be_a(Motif)
        expect(assigns(:motif)).to be_persisted
      end

      it "redirects to the created motif" do
        post 'create', :motif => valid_attributes
        expect(response).to redirect_to(Motif.last)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {nom: "MyString2"}
      }

      it "updates the requested motif" do
        motif = Motif.create! valid_attributes
        put 'update', {:id => motif.id, :motif => new_attributes}
        motif.reload
        expect(motif.nom).not_to eq("MyString")
      end

      it "assigns the requested motif as @motif" do
        motif = Motif.create! valid_attributes
        put 'update', {:id => motif.id, :motif => valid_attributes}
        expect(assigns(:motif)).to eq(motif)
      end

      it "redirects to the motif" do
        motif = Motif.create! valid_attributes
        put 'update', {:id => motif.id, :motif => valid_attributes}
        expect(response).to redirect_to(motif)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested motif" do
      motif = Motif.create! valid_attributes
      expect {
        delete 'destroy', :id => motif.id
      }.to change(Motif, :count).by(-1)
    end

    it "redirects to the motifs list" do
      motif = Motif.create! valid_attributes
      delete 'destroy', :id => motif.id
      expect(response).to redirect_to(motifs_url)
    end
  end

end
