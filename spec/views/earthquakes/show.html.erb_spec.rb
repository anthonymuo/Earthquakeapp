require 'rails_helper'

RSpec.describe "earthquakes/show", type: :view do
  before(:each) do
    @earthquake = assign(:earthquake, Earthquake.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Mag Type/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Network Code/)
    expect(rendered).to match(/Quake/)
  end
end
