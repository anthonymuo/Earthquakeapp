require 'rails_helper'

RSpec.describe "earthquakes/index", type: :view do
  before(:each) do
    assign(:earthquakes, [
      Earthquake.create!(
        :latitude => 2.5,
        :longitude => 3.5,
        :depth => "9.99",
        :mag => "9.99",
        :magType => "Mag Type",
        :nst => 4,
        :gap => "9.99",
        :dmin => "9.99",
        :rms => "9.99",
        :networkCode => "Network Code",
        :quakeId => "Quake"
      ),
      Earthquake.create!(
        :latitude => 2.5,
        :longitude => 3.5,
        :depth => "9.99",
        :mag => "9.99",
        :magType => "Mag Type",
        :nst => 4,
        :gap => "9.99",
        :dmin => "9.99",
        :rms => "9.99",
        :networkCode => "Network Code",
        :quakeId => "Quake"
      )
    ])
  end

  it "renders a list of earthquakes" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Mag Type".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Network Code".to_s, :count => 2
    assert_select "tr>td", :text => "Quake".to_s, :count => 2
  end
end
