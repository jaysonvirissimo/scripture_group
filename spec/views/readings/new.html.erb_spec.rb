require 'rails_helper'

RSpec.describe "readings/new", type: :view do
  before(:each) do
    assign(:reading, Reading.new(
      :body => "MyText"
    ))
  end

  it "renders new reading form" do
    render

    assert_select "form[action=?][method=?]", readings_path, "post" do

      assert_select "textarea[name=?]", "reading[body]"
    end
  end
end
