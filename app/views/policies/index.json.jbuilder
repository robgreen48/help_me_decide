json.array!(@policies) do |policy|
  json.extract! policy, :id, :party_id, :issue_area, :policy_text
  json.url policy_url(policy, format: :json)
end
