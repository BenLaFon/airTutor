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

terrence = User.create(name:'Terrence', role: 'student', phone_number: '12222323', email: 'ben.lwefiil.com')
student = Student.create(age: 13)
terrence.student = student

Booking.create(comment: "this is booker", student: student, teacher: teacher)
