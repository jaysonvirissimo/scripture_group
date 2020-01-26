# frozen_string_literal: true

namespace :migrate do
  desc 'Scrub replacement characters from verses'
  task clean_verse_text: :environment do
    CHARACTER_TO_DELETE = '�'

    Verse.find_each do |verse|
      verse.update(text: verse.text.delete(CHARACTER_TO_DELETE))
    end
  end
end
