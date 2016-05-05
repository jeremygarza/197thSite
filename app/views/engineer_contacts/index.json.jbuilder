json.array!(@engineer_contacts) do |engineer_contact|
  json.extract! engineer_contact, :id, :position, :last_name, :first_name, :rank, :phone
  json.url engineer_contact_url(engineer_contact, format: :json)
end
