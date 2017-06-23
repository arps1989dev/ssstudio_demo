json.extract! selected_photo, :id, :photo_id, :created_at, :updated_at
json.url selected_photo_url(selected_photo, format: :json)
