# frozen_string_literal: true

namespace :migrate do
  desc 'Create records for the Book of Exodus'
  task seed_exodus: :environment do
    IO.readlines("#{Rails.root}/lib/assets/exodus.txt").each do |line|
      VerseParser.new(line).call
    end
  end
end
