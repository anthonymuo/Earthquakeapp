require 'rails_helper'

RSpec.describe "earthquakes/edit", type: :view do
  before(:each) do
    @earthquake = assign(:earthquake, Earthquake.create!(
      :latitude => 1.5,
      :longitude => 1.5,
      :depth => "9.99",
      :mag => "9.99",
      :magType => "MyString",
      :nst => 1,
      :gap => "9.99",
      :dmin => "9.99",
      :rms => "9.99",
      :networkCode => "MyString",
      :quakeId => "MyString"
    ))
  end

  it "renders the edit earthquake form" do
    render

    assert_select "form[action=?][method=?]", earthquake_path(@earthquake), "post" do

      assert_select "input[name=?]", "earthquake[latitude]"

      assert_select "input[name=?]", "earthquake[longitude]"

      assert_select "input[name=?]", "earthquake[depth]"

      assert_select "input[name=?]", "earthquake[mag]"

      assert_select "input[name=?]", "earthquake[magType]"

      assert_select "input[name=?]", "earthquake[nst]"

      assert_select "input[name=?]", "earthquake[gap]"

      assert_select "input[name=?]", "earthquake[dmin]"

      assert_select "input[name=?]", "earthquake[rms]"

      assert_select "input[name=?]", "earthquake[networkCode]"

      assert_select "input[name=?]", "earthquake[quakeId]"
    end
  end
end
