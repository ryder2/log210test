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

Motif.create(id: 1, nom: 'Abus sexuel')
Motif.create(id: 2, nom: 'Aliénation parentale')
Motif.create(id: 3, nom: 'Compétences parentales')
Motif.create(id: 4, nom: 'Consommation d’alcool')
Motif.create(id: 5, nom: 'Déficience intellectuelle')
Motif.create(id: 6, nom: 'Dénigrement')
Motif.create(id: 7, nom: 'Habiletés parentales')
Motif.create(id: 8, nom: 'Inquiétude')
Motif.create(id: 9, nom: 'Interdit de contact')
Motif.create(id: 10, nom: 'Interdit de contact (entre parents)')
Motif.create(id: 11, nom: 'Menace')
Motif.create(id: 12, nom: 'Menace d\'enlèvement de l\'enfant')
Motif.create(id: 13, nom: 'Mésentente')
Motif.create(id: 14, nom: 'Négligence')
Motif.create(id: 15, nom: 'Reprise de contact')
Motif.create(id: 16, nom: 'Suspicion d\'attouchements')
Motif.create(id: 17, nom: 'Toxicomanie')
Motif.create(id: 18, nom: 'Troubles de santé mentale')
Motif.create(id: 19, nom: 'Violence physique')
Motif.create(id: 20, nom: 'Violence verbale')