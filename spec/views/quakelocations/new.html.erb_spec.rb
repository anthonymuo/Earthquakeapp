require 'rails_helper'

RSpec.describe "quakelocations/new", type: :view do
  before(:each) do
    assign(:quakelocation, Quakelocation.new(
      :address => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :mag => "9.99"
    ))
  end

  it "renders new quakelocation form" do
    render

    assert_select "form[action=?][method=?]", quakelocations_path, "post" do

      assert_select "input[name=?]", "quakelocation[address]"

      assert_select "input[name=?]", "quakelocation[latitude]"

      assert_select "input[name=?]", "quakelocation[longitude]"

      assert_select "input[name=?]", "quakelocation[mag]"
    end
  end
end
