# frozen_string_literal: true

namespace :migrate do
  desc 'Create records for the Book of Mark'
  task seed_mark: :environment do
    IO.readlines("#{Rails.root}/lib/assets/mark.txt").each do |line|
      VerseParser.new(line).call
    end
  end
end