# frozen_string_literal: true

json.extract! reading, :id, :body, :created_at, :updated_at
json.url reading_url(reading, format: :json)
