require 'rails_helper'

RSpec.describe "readings/show", type: :view do
  before(:each) do
    @reading = assign(:reading, Reading.create!(
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
