# frozen_string_literal: true

class Reaction < ApplicationRecord
  belongs_to :reading
  belongs_to :verse, required: false

  validates :body, presence: true
end
