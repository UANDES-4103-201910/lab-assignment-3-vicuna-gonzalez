# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Users
u1 = User.create(name:"Raimundo",lastname:"Gonzalez",password:"123",address:"Hola 123")
u2 = User.create(name:"Gustavo",lastname:"Vicuña",password:"password",address:"Pensilvania 321")
u3 = User.create(name:"Pedro",lastname:"Perez",password:"1234",address:"California 231")
u4 = User.create(name:"Claudio",lastname:"Martinez",password:"password",address:"New York 220")
u5 = User.create(name:"Sofia",lastname:"Alvarez",password:"asd",address:"Manhattan 9184")
#Phones
p1 = Phone.create(number:"9999999",user:u1)
p2 = Phone.create(number:"1111111",user:u2)
p3 = Phone.create(number:"2222222",user:u3)
p4 = Phone.create(number:"3333333",user:u4)
p5 = Phone.create(number:"4444444",user:u5)
#Emails
m1 = Email.create(mail:"a@a.com",user:u1)
m2 = Email.create(mail:"b@b.com",user:u2)
m3 = Email.create(mail:"c@c.com",user:u3)
m4 = Email.create(mail:"d@d.com",user:u4)
m5 = Email.create(mail:"e@e.com",user:u5)
#Event Venues
ev1 = Eventvenue.create(name:"Estadio Nacional",address:"santiago, centro 331",capacity:157000)
ev2 = Eventvenue.create(name:"Quinta Vergara",address:"viña, quinta vergara 221",capacity:200000)
ev3 = Eventvenue.create(name:"Movistar Arena",address:"santiago, asdasd 123",capacity:3000)
#Events
e1 = Event.create(name:"Colo colo vs Huachipato",description:"Football game",startdate:"01/02/2018",eventvenue:ev1)
e2 = Event.create(name:"Metallica",description:"Metal concert",startdate:"02/01/2015",eventvenue:ev2)
e3 = Event.create(name:"E3",description:"Game Exposition",startdate:"03/01/2014",eventvenue:ev3)
#Tickets
t1 = Ticket.create(price:2000,category:"Cancha",event:e1)
t2 = Ticket.create(price:10000,category:"Platea Alta",event:e1)
t3 = Ticket.create(price:4000,category:"Platea baja",event:e1)
t4 = Ticket.create(price:3000,category:"Cancha",event:e2)
t5 = Ticket.create(price:12000,category:"Platea Alta",event:e2)
t6 = Ticket.create(price:5000,category:"Platea baja",event:e2)
t7 = Ticket.create(price:1000,category:"Cancha",event:e3)
t8 = Ticket.create(price:8000,category:"Platea Alta",event:e3)
t9 = Ticket.create(price:2000,category:"Platea baja",event:e3)
#Orders
o1 = Order.create(amount:3,user:u1,ticket:t1)
o2 = Order.create(amount:3,user:u1,ticket:t4)
o3 = Order.create(amount:1,user:u1,ticket:t7)
o4 = Order.create(amount:1,user:u2,ticket:t2)
o5 = Order.create(amount:1,user:u2,ticket:t5)
o6 = Order.create(amount:1,user:u2,ticket:t8)
o7 = Order.create(amount:5,user:u3,ticket:t3)
o8 = Order.create(amount:1,user:u3,ticket:t6)
o9 = Order.create(amount:1,user:u3,ticket:t9)
o10 = Order.create(amount:1,user:u4,ticket:t2)
o11 = Order.create(amount:2,user:u4,ticket:t5)
o12 = Order.create(amount:2,user:u4,ticket:t8)
o13 = Order.create(amount:1,user:u5,ticket:t3)
o14 = Order.create(amount:3,user:u5,ticket:t6)
o15 = Order.create(amount:1,user:u5,ticket:t9)