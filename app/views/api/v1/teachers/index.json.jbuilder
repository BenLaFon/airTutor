json.teachers do
  json.array! @teachers do |teacher|
    json.extract! teacher, :credential, :user, :id, :course_info, :education_background, :teaching_credentials, :course_title, :image_url
  end
end
