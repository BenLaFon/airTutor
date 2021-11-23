json.students do
  json.array! @students do |student|
    json.extract! student, :age, :user_id
  end
end
