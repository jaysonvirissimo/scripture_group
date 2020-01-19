# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Verse, type: :model do
  it { expect(described_class.new).to respond_to(:book) }
  it { expect(described_class.new).to respond_to(:chapter) }
  it { expect(described_class.new).to respond_to(:number) }
  it { expect(described_class.new).to respond_to(:text) }
end
