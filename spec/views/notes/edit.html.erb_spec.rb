require 'rails_helper'

RSpec.describe "notes/edit", type: :view do
  before(:each) do
    @note = assign(:note, Note.create!(
      :texte => "MyString",
      :famille_id => 1,
      :users_id => 1
    ))
  end

  it "renders the edit note form" do
    render

    assert_select "form[action=?][method=?]", note_path(@note), "post" do

      assert_select "input#note_texte[name=?]", "note[texte]"

      assert_select "input#note_famille_id[name=?]", "note[famille_id]"

      assert_select "input#note_users_id[name=?]", "note[users_id]"
    end
  end
end
