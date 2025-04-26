require 'rails_helper'

RSpec.describe "notes/edit", type: :view do
  let(:note) {
    Note.create!(
      content: "MyText",
      customer: nil,
      user: nil
    )
  }

  before(:each) do
    assign(:note, note)
  end

  it "renders the edit note form" do
    render

    assert_select "form[action=?][method=?]", note_path(note), "post" do

      assert_select "textarea[name=?]", "note[content]"

      assert_select "input[name=?]", "note[customer_id]"

      assert_select "input[name=?]", "note[user_id]"
    end
  end
end
