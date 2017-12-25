require 'rails_helper'

RSpec.describe "recordingstations/show", type: :view do
  before(:each) do
    @recordingstation = assign(:recordingstation, Recordingstation.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Quake/)
    expect(rendered).to match(/Place/)
    expect(rendered).to match(/Quaketype/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Location Source/)
    expect(rendered).to match(/Station Code/)
  end
end
