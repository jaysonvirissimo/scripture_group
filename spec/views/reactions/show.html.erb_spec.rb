# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'reactions/show', type: :view do
  before(:each) do
    @reaction = assign(:reaction, Reaction.create!(
                                    body: 'MyText',
                                    reading: nil,
                                    name: 'Name'
                                  ))
  end

  xit 'renders attributes in <p>' do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
  end
end
