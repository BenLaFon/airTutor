# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.delete_all
Student.delete_all
Teacher.delete_all

tester = User.create(name:'Xun', role: 'teacher', phone_number: '158-666-6666', email: 'Amy@gmail.com')
teacher = Teacher.create(credential: "Bootstrap Expert", course_info: "How to take care of cats", education_background: "Like all of the coding things", teaching_credentials:"my cats love me", course_title: "Ruby noob to Hero")
tester.teacher = teacher
tester1 = User.create(name:'Pavel', role: 'teacher', phone_number: '158-888-8888', email: 'Pavel@lewagon.com')
teacher1 = Teacher.create(credential: "CSS Enthusiast", course_info: "All of the CSS info you will ever need", education_background: "Lewagon Alumni Maybe?", teaching_credentials:"Im like really good at math", course_title: "Pizza Vs. Realestate")
tester1.teacher = teacher1
tester2 = User.create(name:'Aggy', role: 'teacher', phone_number: '1-800-8888', email: 'Ruby4Life@gmail.com')
teacher2 = Teacher.create(credential: "None of your business", course_info: "Pushups and coding", education_background: "Also Lewagon probably", teaching_credentials:"None of your Business", course_title: "Databases and other things")
tester2.teacher = teacher2


terrence = User.create(name:'Terrence', role: 'student', phone_number: '158-244-4365', email: 'terrence@terrence.com')
student = Student.create(age: 13)
terrence.student = student
terrence1 = User.create(name:'Gary', role: 'student', phone_number: '159-345-4531', email: 'gary@gary.com')
student1 = Student.create(age: 29)
terrence1.student = student1
terrence2 = User.create(name:'Cuiwei', role: 'student', phone_number: '127-329-2234', email: 'cuiwei@cuiwei.com')
student2 = Student.create(age: 20)
terrence2.student = student2

Booking.create(comment: "Lets learn Ruby", student: student, teacher: teacher, status: 'accepted', time: '9:00')
Booking.create(comment: "CSS sounds Fun", student: student1, teacher: teacher1, status: 'pending', time: '10:00')
Booking.create(comment: "No pushups please", student: student2, teacher: teacher2, status: 'pending', time: '11:00')
