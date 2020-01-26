require 'rails_helper'

RSpec.describe "sections/edit", type: :view do
  before(:each) do
    @section = assign(:section, Section.create!(
      :book => nil,
      :starting_chapter => nil,
      :ending_chapter => nil
    ))
  end

  xit "renders the edit section form" do
    render

    assert_select "form[action=?][method=?]", section_path(@section), "post" do

      assert_select "input[name=?]", "section[book_id]"

      assert_select "input[name=?]", "section[starting_chapter_id]"

      assert_select "input[name=?]", "section[ending_chapter_id]"
    end
  end
end
