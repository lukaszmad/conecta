require 'rails_helper'

RSpec.describe "customers/show", type: :view do
  before(:each) do
    assign(:customer, Customer.create!(
      name: "Name",
      email: "Email",
      phone: "Phone",
      company: "Company",
      status: "Status",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Company/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(//)
  end
end
