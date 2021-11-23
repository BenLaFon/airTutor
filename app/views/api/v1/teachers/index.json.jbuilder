json.teachers do
  json.array! @teachers do |teacher|
    json.extract! teacher, :credential, :user
  end
end
