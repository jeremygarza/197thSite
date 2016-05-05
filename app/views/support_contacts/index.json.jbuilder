json.array!(@support_contacts) do |support_contact|
  json.extract! support_contact, :id, :position, :last_name, :first_name, :rank, :phone
  json.url support_contact_url(support_contact, format: :json)
end
