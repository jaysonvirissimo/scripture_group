require 'rails_helper'

RSpec.describe "readings/edit", type: :view do
  before(:each) do
    @reading = assign(:reading, Reading.create!(
      :body => "MyText"
    ))
  end

  it "renders the edit reading form" do
    render

    assert_select "form[action=?][method=?]", reading_path(@reading), "post" do

      assert_select "textarea[name=?]", "reading[body]"
    end
  end
end
