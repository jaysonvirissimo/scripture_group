# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Reaction, type: :model do
  describe '#new' do
    let(:instance) do
      described_class.new(body: '', reading: reading)
    end
    let(:reading) { Reading.create(body: 'Stuff', date: Date.today) }

    it { expect(instance).to_not be_valid }
  end
end
