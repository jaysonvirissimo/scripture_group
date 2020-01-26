require 'rails_helper'

RSpec.describe "sections/index", type: :view do
  before(:each) do
    assign(:sections, [
      Section.create!(
        :book => nil,
        :starting_chapter => nil,
        :ending_chapter => nil
      ),
      Section.create!(
        :book => nil,
        :starting_chapter => nil,
        :ending_chapter => nil
      )
    ])
  end

  xit "renders a list of sections" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
