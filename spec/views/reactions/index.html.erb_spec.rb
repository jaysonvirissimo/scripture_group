require 'rails_helper'

RSpec.describe "reactions/index", type: :view do
  before(:each) do
    assign(:reactions, [
      Reaction.create!(
        :body => "MyText",
        :reading => nil,
        :name => "Name"
      ),
      Reaction.create!(
        :body => "MyText",
        :reading => nil,
        :name => "Name"
      )
    ])
  end

  xit "renders a list of reactions" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
