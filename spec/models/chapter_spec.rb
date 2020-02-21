# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Chapter, type: :model do
  it { expect(described_class.new).to respond_to(:book) }
  it { expect(described_class.new).to respond_to(:number) }
  it { expect(described_class.new).to respond_to(:verses) }

  describe '#audio_url' do
    let(:book) do
      Book.create(name: 'Genesis', audio_url: 'https://www.foo')
    end
    let(:chapter) do
      described_class.create(book: book, number: 3)
    end
    let(:expected_url) { 'https://www.foo.3' }

    it { expect(chapter.audio_url).to eq(expected_url) }
  end
end
