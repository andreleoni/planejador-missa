json.extract! ceremony_part, :id, :ceremony_id, :title, :external_url, :notes, :created_at, :updated_at
json.url ceremony_part_url(ceremony_part, format: :json)
