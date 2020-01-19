# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book, type: :model do
  it { expect(described_class.new).to respond_to(:name) }
end
