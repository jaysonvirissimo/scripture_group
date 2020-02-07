# frozen_string_literal: true

namespace :migrate do
  desc 'Create records for the given Book'
  task :seed_book, [:file_name] => [:environment] do |_task, arguments|
    file_name = arguments[:file_name]

    IO.readlines("#{Rails.root}/lib/assets/#{file_name}.txt").each do |line|
      VerseParser.new(line).call
    end
  end
end

