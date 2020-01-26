require 'rails_helper'

RSpec.describe "sections/new", type: :view do
  before(:each) do
    assign(:section, Section.new(
      :book => nil,
      :starting_chapter => nil,
      :ending_chapter => nil
    ))
  end

  xit "renders new section form" do
    render

    assert_select "form[action=?][method=?]", sections_path, "post" do

      assert_select "input[name=?]", "section[book_id]"

      assert_select "input[name=?]", "section[starting_chapter_id]"

      assert_select "input[name=?]", "section[ending_chapter_id]"
    end
  end
end
