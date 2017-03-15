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

RSpec.describe ParentsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Parent. As you add validations to Parent, be sure to
  # adjust the attributes here as well.
  before { controller.stub(:authenticate_user!).and_return true }
  
  let(:valid_attributes) {
    {id: 23, statut: "gardien", date_naissance: "2010-01-01", nom: "nom", demande_id: 1, no_permis_conduire: "100ABC",
	 no_RAMQ: "89595", avocat: "avocat", avocatTelephone: "444000444", tarification: "10", parentinfos_attributes: [courriel: 'sdfsdf',
	 telephone_res: '234234', nocivique: '43534', rue: 'dsfdsf', appartement: '54', ville: 'sdfsdf',
	 code_postal: '34534', province: 'sdfsdf', nom_urgence: 'fsdfs', numero_urgence: '525', note: 'dsfsdf',
	 parent_id: 23, telephone_travail: '4535', telephone_cell: '23434']}
  }
  let(:valid_attributes0) {
    {id: 23, statut: "visiteur", date_naissance: "2010-01-01", nom: "nom", demande_id: 1, no_permis_conduire: "100ABC",
   no_RAMQ: "89595", avocat: "avocat", avocatTelephone: "444000444", tarification: "10", parentinfos_attributes: [courriel: 'sdfsdf',
   telephone_res: '234234', nocivique: '43534', rue: 'dsfdsf', appartement: '54', ville: 'sdfsdf',
   code_postal: '34534', province: 'sdfsdf', nom_urgence: 'fsdfs', numero_urgence: '525', note: 'dsfsdf',
   parent_id: 23, telephone_travail: '4535', telephone_cell: '23434']}
  }
  let(:valid_attributes1) {
    {id: 23, statut: "tuteur", date_naissance: "2010-01-01", nom: "nom", demande_id: 1, no_permis_conduire: "100ABC",
   no_RAMQ: "89595", avocat: "avocat", avocatTelephone: "444000444", tarification: "10", parentinfos_attributes: [courriel: 'sdfsdf',
   telephone_res: '234234', nocivique: '43534', rue: 'dsfdsf', appartement: '54', ville: 'sdfsdf',
   code_postal: '34534', province: 'sdfsdf', nom_urgence: 'fsdfs', numero_urgence: '525', note: 'dsfsdf',
   parent_id: 23, telephone_travail: '4535', telephone_cell: '23434']}
  }
  let(:valid_attributes2) {
    {id: 23, statut: "acceuil", date_naissance: "2010-01-01", nom: "nom", demande_id: 1, no_permis_conduire: "100ABC",
   no_RAMQ: "89595", avocat: "avocat", avocatTelephone: "444000444", tarification: "10", parentinfos_attributes: [courriel: 'sdfsdf',
   telephone_res: '234234', nocivique: '43534', rue: 'dsfdsf', appartement: '54', ville: 'sdfsdf',
   code_postal: '34534', province: 'sdfsdf', nom_urgence: 'fsdfs', numero_urgence: '525', note: 'dsfsdf',
   parent_id: 23, telephone_travail: '4535', telephone_cell: '23434']}
  }
  
  let(:invalid_attributes) {
    {id: 23, statut: "", date_naissance: "", nom: "", demande_id: nil, no_permis_conduire: "100ABC",
	 no_RAMQ: "89595", avocat: "avocat", avocatTelephone: "444000444", tarification: "10", parentinfos_attributes: [courriel: 'sdfsdf',
	 telephone_res: '234234', nocivique: '43534', rue: 'dsfdsf', appartement: '54', ville: 'sdfsdf',
	 code_postal: '34534', province: 'sdfsdf', nom_urgence: 'fsdfs', numero_urgence: '525', note: 'dsfsdf',
	 parent_id: 23, telephone_travail: '4535', telephone_cell: '23434']}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ParentsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all parents as @parents" do
      parent = Parent.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:parents)).to eq([parent])
    end
  end

  describe "GET #show" do
    it "should be successful" do
      parent = Parent.create! valid_attributes
      get 'show', :id => parent.id
      response.should be_success
    end
  end

  describe "GET #new" do
    it "assigns a new parent as @parent" do
      get :new, params: {parent: valid_attributes}, session: valid_session
      expect(assigns(:parent)).to be_a_new(Parent)
    end
  end

  describe "GET #edit" do
    it "assigns the requested parent as @parent" do
      parent = Parent.create! valid_attributes
      get 'edit', :id => parent.id
      expect(assigns(:parent)).to eq(parent)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Parent" do
        expect {
          post 'create', :parent => valid_attributes
        }.to change(Parent, :count).by(1)
      end

      it "assigns a newly created parent as @parent" do
        post 'create', :parent => valid_attributes2
        expect(assigns(:parent)).to be_a(Parent)
        expect(assigns(:parent)).to be_persisted
      end

      it "assigns a newly created parent as @parent" do
        post 'create', :parent => valid_attributes1
        expect(assigns(:parent)).to be_a(Parent)
        expect(assigns(:parent)).to be_persisted
      end

      it "assigns a newly created parent as @parent" do
        post 'create', :parent => valid_attributes0
        expect(assigns(:parent)).to be_a(Parent)
        expect(assigns(:parent)).to be_persisted
      end

      it "redirects to the created parent" do
        post 'create', :parent => valid_attributes
        expect(response).to redirect_to(Parent.last)
      end
    end
	context "with invalid attributes" do
	  it "does not save the new contact" do
        expect{
          post 'create', :parent => invalid_attributes
        }.to_not change(Parent,:count)
      end

      it "re-renders the new method" do
        post 'create', :parent => invalid_attributes
        response.should render_template :new
      end
	end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {id: 23, statut: "gardien", date_naissance: "2010-01-01", nom: "nom1", demande_id: 1, no_permis_conduire: "100ABC",
   no_RAMQ: "89595", avocat: "avocat", avocatTelephone: "444000444", tarification: "10", parentinfos_attributes: [courriel: 'sdfsdf',
   telephone_res: '234234', nocivique: '43534', rue: 'dsfdsf', appartement: '54', ville: 'sdfsdf',
   code_postal: '34534', province: 'sdfsdf', nom_urgence: 'fsdfs', numero_urgence: '525', note: 'dsfsdf',
   parent_id: 23, telephone_travail: '4535', telephone_cell: '23434']}
      }

      it "updates the requested parent" do
        parent = Parent.create! valid_attributes
        put 'update', {:id => parent.id, :parent => new_attributes}
        parent.reload
		    expect(parent.nom).not_to eq("nom")
      end

      it "assigns the requested parent as @parent" do
        parent = Parent.create! valid_attributes
        parent_infos_attributes =
          { 
            courriel: 'sdfsdf',
            telephone_res: '234234', nocivique: '43534', rue: 'dsfdsf', appartement: '54', ville: 'sdfsdf',
            code_postal: '34534', province: 'sdfsdf', nom_urgence: 'fsdfs', numero_urgence: '525', note: 'dsfsdf',
            parent_id: parent.id, telephone_travail: '4535', telephone_cell: '23434'
          }
        Parentinfo.create! parent_infos_attributes
        put 'update', {:id => parent.id, :parent => valid_attributes}
        expect(assigns(:parent)).to eq(parent)
      end

      it "redirects to the parent" do
        parent = Parent.create! valid_attributes
        put 'update', {:id => parent.id, :parent => valid_attributes}
        expect(response).to redirect_to(parent)
      end
    end
	context "with invalid attributes" do
      it "re-renders the update method" do
        parent = Parent.create! valid_attributes
        put 'update', {:id => parent.id, :parent => invalid_attributes}
        response.should render_template :edit
      end
    end 
  end

  describe "DELETE #destroy" do
    it "destroys the requested parent" do
      parent = Parent.create! valid_attributes
      expect {
        delete 'destroy', :id => parent.id
      }.to change(Parent, :count).by(-1)
    end

    it "redirects to the parents list" do
      parent = Parent.create! valid_attributes
      delete 'destroy', :id => parent.id
      expect(response).to redirect_to(parents_url)
    end
  end

end
