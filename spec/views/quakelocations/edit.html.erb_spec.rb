require 'rails_helper'

RSpec.describe "quakelocations/edit", type: :view do
  before(:each) do
    @quakelocation = assign(:quakelocation, Quakelocation.create!(
      :address => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :mag => "9.99"
    ))
  end

  it "renders the edit quakelocation form" do
    render

    assert_select "form[action=?][method=?]", quakelocation_path(@quakelocation), "post" do

      assert_select "input[name=?]", "quakelocation[address]"

      assert_select "input[name=?]", "quakelocation[latitude]"

      assert_select "input[name=?]", "quakelocation[longitude]"

      assert_select "input[name=?]", "quakelocation[mag]"
    end
  end
end
