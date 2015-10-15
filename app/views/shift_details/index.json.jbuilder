json.array!(@shift_details) do |shift_detail|
  json.extract! shift_detail, :id, :start_time, :end_time, :shift_name, :description, :user_id
  json.url shift_detail_url(shift_detail, format: :json)
end
