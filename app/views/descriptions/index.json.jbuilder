json.array!(@descriptions) do |description|
  json.extract! description, :status, :user_id
  json.url description_url(description, format: :json)
end
