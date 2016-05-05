json.array!(@augmentaion_contacts) do |augmentaion_contact|
  json.extract! augmentaion_contact, :id, :position, :last_name, :first_name, :rank, :phone
  json.url augmentaion_contact_url(augmentaion_contact, format: :json)
end
