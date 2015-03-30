json.array!(@policies) do |policy|
  json.extract! policy, :id, :party_id, :issue_area
  json.url policy_url(policy, format: :json)
end
