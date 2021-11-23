# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tester = User.create(name:'ben', role: 'teacher', phone_number: '12222323', email: 'ben.lafon@gmail.com')
teacher = Teacher.create(credential: "all them degrees")
tester.teacher = teacher
tester1 = User.create(name:'ben1', role: 'teacher', phone_number: '12222323', email: 'ben.lafon@11111gmail.com')
teacher1 = Teacher.create(credential: "all them degrees111111")
tester1.teacher = teacher1
tester2 = User.create(name:'ben2', role: 'teacher', phone_number: '12222222222323', email: 'ben.lafon@2222222gmail.com')
teacher2 = Teacher.create(credential: "all them degrees222222222")
tester2.teacher = teacher2

terrence = User.create(name:'Terrence', role: 'student', phone_number: '12222323', email: 'ben.lwefiil.com')
student = Student.create(age: 13)
terrence.student = student
terrence1 = User.create(name:'Terrence11', role: 'student', phone_number: '12222111111111323', email: 'ben11111111com')
student1 = Student.create(age: 111)
terrence1.student = student1
terrence2 = User.create(name:'Terrence222', role: 'student', phone_number: '122222222222323', email: 'be22222222.com')
student2 = Student.create(age: 22)
terrence2.student = student2

Booking.create(comment: "this is booker", student: student, teacher: teacher)
Booking.create(comment: "this is booker111", student: student1, teacher: teacher1)
Booking.create(comment: "this is booker222", student: student2, teacher: teacher2)
