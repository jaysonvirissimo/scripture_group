require 'rails_helper'

RSpec.describe "reactions/new", type: :view do
  before(:each) do
    assign(:reaction, Reaction.new(
      :body => "MyText",
      :reading => nil,
      :name => "MyString"
    ))
  end

  xit "renders new reaction form" do
    render

    assert_select "form[action=?][method=?]", reactions_path, "post" do

      assert_select "textarea[name=?]", "reaction[body]"

      assert_select "input[name=?]", "reaction[reading_id]"

      assert_select "input[name=?]", "reaction[name]"
    end
  end
end
