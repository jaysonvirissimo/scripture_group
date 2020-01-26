require 'rails_helper'

RSpec.describe "sections/show", type: :view do
  let(:book) { Book.create(name: 'Exodus') }
  let(:starting_chapter) { Chapter.create(book: book, number: 1) }
  let(:ending_chapter) { Chapter.create(book: book, number: 2) }
  let(:reading) { Reading.create(date: Date.today) }

  before(:each) do
    @section = assign(:section, Section.create!(
      :book => book,
      :starting_chapter => starting_chapter,
      :ending_chapter => ending_chapter,
      :reading => reading
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
