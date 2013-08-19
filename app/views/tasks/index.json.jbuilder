json.array!(@tasks) do |task|
  json.extract! task, :task, :expected_end_date
  json.url task_url(task, format: :json)
end
