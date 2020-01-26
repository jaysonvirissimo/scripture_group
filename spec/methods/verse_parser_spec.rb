# frozen_string_literal: true

require 'rails_helper'

describe VerseParser do
  describe '#call' do
    let(:line) do
      "Exodus 1:1\tThese are the names of� the sons of Israel who went to Egypt with Jacob, each with his family:\n"
    end
    subject { described_class.new(line) }

    it 'creates the book' do
      subject.call
      expect(Book.find_by(name: 'Exodus')).to be
    end

    it 'create the chapter' do
      subject.call
      expect(Chapter.find_by(number: 1)).to be
    end

    it 'creates verse associates with the relevant chapter and book' do
      subject.call
      verse = Chapter.find_by(number: 1).verses.find_by(number: 1)
      expect(verse.text).to match(/These are the names of the sons of Israel/)
      expect(verse.text).not_to match('�')
      expect(verse.book).to eq(Book.find_by(name: 'Exodus'))
    end
  end
end
