require 'rails_helper'

RSpec.describe "questions/new", type: :view do
  before(:each) do
    assign(:question, Question.new(
      :body => "MyText",
      :reading => nil
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "textarea[name=?]", "question[body]"

      assert_select "input[name=?]", "question[reading_id]"
    end
  end
end
