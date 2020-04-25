# frozen_string_literal: true

class Chapter < ApplicationRecord
  belongs_to :book
  has_many :verses

  scope :in_order, -> { order(:number) }

  def audio_url
    "#{book.audio_url}.#{number}"
  end

  def audio_url?
    book.audio_url.present?
  end
end
