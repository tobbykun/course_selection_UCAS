# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Create two students
student1 = Student.create(name: 'John Doe')
student2 = Student.create(name: 'Jane Doe')

# Create three courses
course1 = Course.create(name: 'Math 101')
course2 = Course.create(name: 'History 202')
course3 = Course.create(name: 'English 301')

# Enroll students in courses
student1.courses << [course1, course2]
student2.courses << [course2, course3]
