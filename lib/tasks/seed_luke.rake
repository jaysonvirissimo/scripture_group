# frozen_string_literal: true

namespace :migrate do
  desc 'Create records for the Book of Luke'
  task seed_luke: :environment do
    IO.readlines("#{Rails.root}/lib/assets/luke.txt").each do |line|
      VerseParser.new(line).call
    end
  end
end
