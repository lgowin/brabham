json.array!(@people) do |person|
  json.extract! person, :id, :group, :name, :person_notes
  json.url person_url(person, format: :json)
end
