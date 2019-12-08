require 'rails_helper'

RSpec.describe "readings/index", type: :view do
  before(:each) do
    assign(:readings, [
      Reading.create!(
        :body => "MyText"
      ),
      Reading.create!(
        :body => "MyText"
      )
    ])
  end

  it "renders a list of readings" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
