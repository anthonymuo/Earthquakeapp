require 'rails_helper'

RSpec.describe "recordingstations/edit", type: :view do
  before(:each) do
    @recordingstation = assign(:recordingstation, Recordingstation.create!(
      :quakeId => "MyString",
      :place => "MyString",
      :quaketype => "MyString",
      :horizontalError => "9.99",
      :depthError => "9.99",
      :magError => "9.99",
      :magNst => 1,
      :status => "MyString",
      :locationSource => "MyString",
      :stationCode => "MyString"
    ))
  end

  it "renders the edit recordingstation form" do
    render

    assert_select "form[action=?][method=?]", recordingstation_path(@recordingstation), "post" do

      assert_select "input[name=?]", "recordingstation[quakeId]"

      assert_select "input[name=?]", "recordingstation[place]"

      assert_select "input[name=?]", "recordingstation[quaketype]"

      assert_select "input[name=?]", "recordingstation[horizontalError]"

      assert_select "input[name=?]", "recordingstation[depthError]"

      assert_select "input[name=?]", "recordingstation[magError]"

      assert_select "input[name=?]", "recordingstation[magNst]"

      assert_select "input[name=?]", "recordingstation[status]"

      assert_select "input[name=?]", "recordingstation[locationSource]"

      assert_select "input[name=?]", "recordingstation[stationCode]"
    end
  end
end
