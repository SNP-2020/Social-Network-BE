# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(FirstName: "John", LastName: "Doe",email: "john_doe@gmail.com",password: "123456", gender: "Male", birthDate: "1990-10-12")
Post.create(postText: "This is my first post", imageURL: "https://i.ibb.co/CVDQwgP/johann-siemens-EPy0g-BJzz-ZU-unsplash.jpg", user: user)