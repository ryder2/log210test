require 'rails_helper'

RSpec.describe "notes/new", type: :view do
  before(:each) do
    assign(:note, Note.new(
      :texte => "MyString",
      :famille_id => 1,
      :users_id   => 1
    ))
  end

  it "renders new note form" do
    render

    assert_select "form[action=?][method=?]", notes_path, "post" do

      assert_select "input#note_texte[name=?]", "note[texte]"
    end
  end
end
