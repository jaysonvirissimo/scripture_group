# frozen_string_literal: true

class Verse < ApplicationRecord
  belongs_to :chapter
  has_one :book, through: :chapter

  scope :in_order, -> { order(:number) }
end
