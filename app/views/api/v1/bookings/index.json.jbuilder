json.bookings do
  json.array! @bookings do |booking|
    json.extract! booking, :time, :comment, :status, :student_id, :teacher_id, :id
  end
end
