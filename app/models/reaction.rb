# frozen_string_literal: true

class Reaction < ApplicationRecord
  include ActionView::Helpers
  include Rails.application.routes.url_helpers

  belongs_to :reading
  belongs_to :verse, required: false
  belongs_to :section, required: false

  validates :body, presence: true

  def self.ordered_by_section
    includes(:section).sort_by do |reaction|
      reaction.section&.created_at || Time.current
    end
  end

  def link_to_anchored_verse
    link_to(verse.title, section.path_to(verse))
  end
end
