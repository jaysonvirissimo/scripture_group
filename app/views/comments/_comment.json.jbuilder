# frozen_string_literal: true

json.extract! comment, :id, :body, :reading_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
