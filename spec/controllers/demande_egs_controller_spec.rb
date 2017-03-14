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

RSpec.describe DemandeEgsController, type: :controller do
  before { controller.stub(:authenticate_user!).and_return true }

  # This should return the minimal set of attributes required to create a valid
  # DemandeEg. As you add validations to DemandeEg, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {motif: "visiteur", conditions: "nom2", date_separation: "2012-01-01", echange_garde: true, reactions_eg: "100ABC2",
     date_dernier_contact: "2012-01-01", description_enfant: "avocat2", contact_pg: true, forme_contact_pg: "102",
      attitude_parent: "true", attitude_enfant: "100ABC2", 
      a_suivre: "2012-01-01", demande_id: 1, deroulement_dernier_contact: "true"}
  }


  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DemandeEGsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all demande_egs as @demande_egs" do
      demande_eg = DemandeEg.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:demande_egs)).to eq([demande_eg])
    end
  end

  describe "GET #show" do
    it "assigns the requested demande_eg as @demande_eg" do
      demande_eg = DemandeEg.create! valid_attributes
      get 'show', :id => demande_eg.id
      expect(assigns(:demande_eg)).to eq(demande_eg)
    end
  end

  describe "GET #new" do
    it "assigns a new demande_eg as @demande_eg" do
      get :new, params: {}, session: valid_session
      expect(assigns(:demande_eg)).to be_a_new(DemandeEg)
    end
    it "assigns a new demande_eg with a param" do
      get :new, :demande_id => 1
      expect(assigns(:demande_eg)).to be_a_new(DemandeEg)
    end
  end

  describe "GET #edit" do
    it "assigns the requested demande_eg as @demande_eg" do
      demande_eg = DemandeEg.create! valid_attributes
      get 'edit', :id => demande_eg.id
      expect(assigns(:demande_eg)).to eq(demande_eg)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new DemandeEg" do
        expect {
          post 'create', :demande_eg => valid_attributes
        }.to change(DemandeEg, :count).by(1)
      end

      it "assigns a newly created demande_eg as @demande_eg" do
        post 'create', :demande_eg => valid_attributes
        expect(assigns(:demande_eg)).to be_a(DemandeEg)
        expect(assigns(:demande_eg)).to be_persisted
      end

      it "redirects to the created demande_eg" do
        post 'create', :demande_eg => valid_attributes
        expect(response).to redirect_to(DemandeEg.last)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {motif: "visiteur", conditions: "nom3", date_separation: "2012-01-01", echange_garde: true, reactions_eg: "100ABC2",
     date_dernier_contact: "2012-01-01", description_enfant: "avocat2", contact_pg: true, forme_contact_pg: "102",
      attitude_parent: "true", attitude_enfant: "100ABC2", 
      a_suivre: "2012-01-01", demande_id: 1, deroulement_dernier_contact: "true"}
      }

      it "updates the requested demande_eg" do
        demande_eg = DemandeEg.create! valid_attributes
        put 'update', {:id => demande_eg.id, :demande_eg => new_attributes}
        demande_eg.reload
        expect(demande_eg.conditions).not_to eq("nom2")
      end

      it "assigns the requested demande_eg as @demande_eg" do
        demande_eg = DemandeEg.create! valid_attributes
        put 'update', {:id => demande_eg.id, :demande_eg => valid_attributes}
        expect(assigns(:demande_eg)).to eq(demande_eg)
      end

      it "redirects to the demande_eg" do
        demande_eg = DemandeEg.create! valid_attributes
        put 'update', {:id => demande_eg.id, :demande_eg => valid_attributes}
        expect(response).to redirect_to(demande_eg)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested demande_eg" do
      demande_eg = DemandeEg.create! valid_attributes
      expect {
        delete 'destroy', :id => demande_eg.id
      }.to change(DemandeEg, :count).by(-1)
    end

    it "redirects to the demande_egs list" do
      demande_eg = DemandeEg.create! valid_attributes
      delete 'destroy', :id => demande_eg.id
      expect(response).to redirect_to(demande_egs_url)
    end
  end

end
