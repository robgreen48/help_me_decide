json.array!(@parties) do |party|
  json.extract! party, :id, :name, :leader
  json.url party_url(party, format: :json)
end
