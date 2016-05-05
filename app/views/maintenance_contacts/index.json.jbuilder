json.array!(@maintenance_contacts) do |maintenance_contact|
  json.extract! maintenance_contact, :id, :position, :last_name, :first_name, :rank, :phone
  json.url maintenance_contact_url(maintenance_contact, format: :json)
end
