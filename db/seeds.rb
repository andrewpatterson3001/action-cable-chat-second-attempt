# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

andrew = User.create(name:'Andrew',email:'andrew@gmail.com',password:'andrew')

ruth = User.create(name:'Ruth',email:'ruth@gmail.com',password:'ruth')

message1 = Message.create(content: 'This is the first message by Andrew', user: andrew)
message2 = Message.create(content: 'This is Ruth!!', user: ruth)
message3 = Message.create(content: 'This is so cool!', user: andrew)
