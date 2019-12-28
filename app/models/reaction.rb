# frozen_string_literal: true

class Reaction < ApplicationRecord
  belongs_to :reading

  validates :body, presence: true
end
