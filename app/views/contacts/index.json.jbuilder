json.array!(@contacts) do |contact|
  json.extract! contact, :id, :position, :last_name, :first_name, :rank, :phone
  json.url contact_url(contact, format: :json)
end
