json.array!(@maps) do |map|
  json.extract! map, :id, :start_time, :end_time, :expense, :starting_point, :end_point, :description
  json.url map_url(map, format: :json)
end
