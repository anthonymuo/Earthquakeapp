require 'rails_helper'

RSpec.describe "locations/new", type: :view do
  before(:each) do
    assign(:location, Location.new(
      :latitude => 1.5,
      :longitude => 1.5,
      :mag => "9.99"
    ))
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", locations_path, "post" do

      assert_select "input[name=?]", "location[latitude]"

      assert_select "input[name=?]", "location[longitude]"

      assert_select "input[name=?]", "location[mag]"
    end
  end
end
