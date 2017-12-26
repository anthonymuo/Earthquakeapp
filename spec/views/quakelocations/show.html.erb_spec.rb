require 'rails_helper'

RSpec.describe "quakelocations/show", type: :view do
  before(:each) do
    @quakelocation = assign(:quakelocation, Quakelocation.create!(
      :address => "Address",
      :latitude => 2.5,
      :longitude => 3.5,
      :mag => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/9.99/)
  end
end
