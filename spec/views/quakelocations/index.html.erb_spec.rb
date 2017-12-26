require 'rails_helper'

RSpec.describe "quakelocations/index", type: :view do
  before(:each) do
    assign(:quakelocations, [
      Quakelocation.create!(
        :address => "Address",
        :latitude => 2.5,
        :longitude => 3.5,
        :mag => "9.99"
      ),
      Quakelocation.create!(
        :address => "Address",
        :latitude => 2.5,
        :longitude => 3.5,
        :mag => "9.99"
      )
    ])
  end

  it "renders a list of quakelocations" do
    render
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
