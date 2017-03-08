# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create(name: 'Directeur')
Role.create(name: 'Coordonnateur')
Role.create(name: 'Intervenant')

connection = ActiveRecord::Base.connection()
connection.execute("INSERT INTO users VALUES (2,'1@1.com','$2a$11$/L67QyC9XedTzjEuxNRZ/Op.henF/lKxDCm6FzmhuONr.C5p9KI0K',null,null,null,1,null,null,null,null,'2012-12-31 00:00:00','2012-12-31 00:00:00',0,null,null,0,'Yoann')")