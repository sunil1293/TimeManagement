json.array!(@time_offs) do |time_off|
  json.extract! time_off, :time_off, :type, :date, :number_of_hours, :from, :to, :reason
  json.url time_off_url(time_off, format: :json)
end
