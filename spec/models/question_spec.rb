require 'rails_helper'

RSpec.describe Question, type: :model do
  describe '#new' do
    context 'associated with a given reading' do
      let(:reading) { Reading.create(body: 'Stuff') }

      context 'and a unique body' do
        let(:question) do
          described_class.new(body: 'one', reading: reading)
        end

        it { expect(question).to be_valid }
      end

      context 'with a non-unique body' do
        let!(:question) do
          described_class.create(body: 'one', reading: reading)
        end
        let(:other_question) { described_class.new(question.attributes) }

        it { expect(other_question).to_not be_valid }
      end
    end
  end
end
