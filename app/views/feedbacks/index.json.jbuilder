json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :name, :feedback
  json.url feedback_url(feedback, format: :json)
end
