# json.extract! @teacher, :id, :credential, :user
# json.comments @teacher.comments do |comment|
json.extract! @teacher, :credential, :user, :id, :course_info, :education_background, :teaching_credentials, :course_title, :image_url
