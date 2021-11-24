# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tester = User.create(name:' Roger McTeacher', role: 'teacher', phone_number: '158-666-6666', email: 'Roger.Mcteacher@gmail.com')
teacher = Teacher.create(credential: "all them degrees", course_info: "You gon' learn today", education_background: "Like the best school ever", teaching_credentials:"my mom says im special", course_title: "THE BEST COURSE")
tester.teacher = teacher
tester1 = User.create(name:'Ms. Samson', role: 'teacher', phone_number: '158-888-8888', email: 'Samson.Ms@haircut.com')
teacher1 = Teacher.create(credential: "I taught Gary", course_info: "1st grade counting, no potty breaks, no hitting", education_background: "Probably Highschool", teaching_credentials:"Gary says 'Very nice lady from back in the day'", course_title: "1st grade maths")
tester1.teacher = teacher1
tester2 = User.create(name:'Snoop Dog', role: 'teacher', phone_number: '420', email: 'snoopy_dogg@gmail.com')
teacher2 = Teacher.create(credential: "None of your business", course_info: "Straight outta compton", education_background: "The Streets", teaching_credentials:"Platinum rapper", course_title: "Snoops Baking Bonanza")
tester2.teacher = teacher2


terrence = User.create(name:'Terrence', role: 'student', phone_number: '12222323', email: 'terrence@terrence.com')
student = Student.create(age: 13)
terrence.student = student
terrence1 = User.create(name:'Gary', role: 'student', phone_number: '12222111111111323', email: 'gary@gary.com')
student1 = Student.create(age: 111)
terrence1.student = student1
terrence2 = User.create(name:'Cuiwei', role: 'student', phone_number: '122222222222323', email: 'cuiwei@cuiwei.com')
student2 = Student.create(age: 22)
terrence2.student = student2

Booking.create(comment: "this is booking 1", student: student, teacher: teacher)
Booking.create(comment: "this is booking 2", student: student1, teacher: teacher1)
Booking.create(comment: "this is booking 3", student: student2, teacher: teacher2)
