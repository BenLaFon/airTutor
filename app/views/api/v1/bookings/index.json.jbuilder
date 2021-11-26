json.bookings do
  json.array! @bookings do |booking|
    json.extract! booking, :time, :comment, :status, :student_id, :teacher_id, :id
    # json.extract! booking.teacher, :credential
    json.extract! booking.student.user, :name, :phone_number
  end
end
