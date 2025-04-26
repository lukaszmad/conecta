require 'rails_helper'

RSpec.describe "customers/edit", type: :view do
  let(:customer) {
    Customer.create!(
      name: "MyString",
      email: "MyString",
      phone: "MyString",
      company: "MyString",
      status: "MyString",
      user: nil
    )
  }

  before(:each) do
    assign(:customer, customer)
  end

  it "renders the edit customer form" do
    render

    assert_select "form[action=?][method=?]", customer_path(customer), "post" do

      assert_select "input[name=?]", "customer[name]"

      assert_select "input[name=?]", "customer[email]"

      assert_select "input[name=?]", "customer[phone]"

      assert_select "input[name=?]", "customer[company]"

      assert_select "input[name=?]", "customer[status]"

      assert_select "input[name=?]", "customer[user_id]"
    end
  end
end
