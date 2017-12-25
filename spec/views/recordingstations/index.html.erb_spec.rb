require 'rails_helper'

RSpec.describe "recordingstations/index", type: :view do
  before(:each) do
    assign(:recordingstations, [
      Recordingstation.create!(
        :quakeId => "Quake",
        :place => "Place",
        :quaketype => "Quaketype",
        :horizontalError => "9.99",
        :depthError => "9.99",
        :magError => "9.99",
        :magNst => 2,
        :status => "Status",
        :locationSource => "Location Source",
        :stationCode => "Station Code"
      ),
      Recordingstation.create!(
        :quakeId => "Quake",
        :place => "Place",
        :quaketype => "Quaketype",
        :horizontalError => "9.99",
        :depthError => "9.99",
        :magError => "9.99",
        :magNst => 2,
        :status => "Status",
        :locationSource => "Location Source",
        :stationCode => "Station Code"
      )
    ])
  end

  it "renders a list of recordingstations" do
    render
    assert_select "tr>td", :text => "Quake".to_s, :count => 2
    assert_select "tr>td", :text => "Place".to_s, :count => 2
    assert_select "tr>td", :text => "Quaketype".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Location Source".to_s, :count => 2
    assert_select "tr>td", :text => "Station Code".to_s, :count => 2
  end
end
