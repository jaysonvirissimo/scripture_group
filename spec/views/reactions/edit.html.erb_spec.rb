# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'reactions/edit', type: :view do
  before(:each) do
    @reaction = assign(:reaction, Reaction.create!(
                                    body: 'MyText',
                                    reading: nil,
                                    name: 'MyString'
                                  ))
  end

  xit 'renders the edit reaction form' do
    render

    assert_select 'form[action=?][method=?]', reaction_path(@reaction), 'post' do
      assert_select 'textarea[name=?]', 'reaction[body]'

      assert_select 'input[name=?]', 'reaction[reading_id]'

      assert_select 'input[name=?]', 'reaction[name]'
    end
  end
end
