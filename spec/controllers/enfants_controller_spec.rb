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

RSpec.describe EnfantsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Enfant. As you add validations to Enfant, be sure to
  # adjust the attributes here as well.
  before { controller.stub(:authenticate_user!).and_return true }

  let(:valid_attributes) {
    {nom: "nom", residence:"kasjd", date_naissance: "2001-01-01"}
  }
  let(:invalid_attributes) {
    {nom: "", residence:"kasjd", date_naissance: "2001-01-01"}
  }
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EnfantsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all enfants as @enfants" do
      enfant = Enfant.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:enfants)).to eq([enfant])
    end
  end

  describe "GET #show" do
    it "assigns the requested enfant as @enfant" do
      enfant = Enfant.create! valid_attributes
      get :show, {id: enfant.to_param}, session: valid_session
      expect(assigns(:enfant)).to eq(enfant)
    end
  end

  describe "GET #new" do
    it "assigns a new enfant as @enfant" do
      get :new, {enfant: valid_attributes}, session: valid_session
      expect(assigns(:enfant)).to be_a_new(Enfant)
    end
  end

  describe "GET #new" do
    it "assigns a new enfant as @enfant" do
      get :new, {demande_id: 1}, session: valid_session
    end
  end

  describe "GET #edit" do
    it "assigns the requested enfant as @enfant" do
      enfant = Enfant.create! valid_attributes
      get :edit, {id: enfant.to_param}, session: valid_session
      expect(assigns(:enfant)).to eq(enfant)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Enfant" do
        expect {
          post :create, {enfant: valid_attributes}, session: valid_session
        }.to change(Enfant, :count).by(1)
      end

      it "assigns a newly created enfant as @enfant" do
        post :create, {enfant: valid_attributes}, session: valid_session
        expect(assigns(:enfant)).to be_a(Enfant)
        expect(assigns(:enfant)).to be_persisted
      end

      it "redirects to the created enfant" do
        post :create, {enfant: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Enfant.last)
      end
    end
    context "with invalid params" do
      it "re-renders new" do
        post 'create', :enfant => invalid_attributes
        expect(response).to render_template :new
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {nom: "nom2"}
      }

      it "updates the requested enfant" do
        enfant = Enfant.create! valid_attributes
        put :update, {id: enfant.to_param, enfant: new_attributes}, session: valid_session
        enfant.reload
        expect(enfant.nom).to eq("nom2")
      end

      it "assigns the requested enfant as @enfant" do
        enfant = Enfant.create! valid_attributes
        put :update, {id: enfant.to_param, enfant: valid_attributes}, session: valid_session
        expect(assigns(:enfant)).to eq(enfant)
      end

      it "redirects to the enfant" do
        enfant = Enfant.create! valid_attributes
        put :update, {id: enfant.to_param, enfant: valid_attributes}, session: valid_session
        expect(response).to redirect_to(enfant)
      end
    end
    context "with invalid params" do
      it "re-renders edit" do
        enfant = Enfant.create! valid_attributes
        put 'update', {:id => enfant.id, :enfant => invalid_attributes}
        expect(response).to render_template :edit
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested enfant" do
      enfant = Enfant.create! valid_attributes
      expect {
        delete :destroy, {id: enfant.to_param}, session: valid_session
      }.to change(Enfant, :count).by(-1)
    end

    it "redirects to the enfants list" do
      enfant = Enfant.create! valid_attributes
      delete :destroy, {id: enfant.to_param}, session: valid_session
      expect(response).to redirect_to(enfants_url)
    end
  end

end
