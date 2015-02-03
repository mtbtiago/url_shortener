# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Url.create long: "http://www.caib.es/sacmicrofront/contenido.do?mkey=M08082109010018816268&lang=CA&cont=7436", counter: 0
Url.create long: "http://menorca.info/menorca/cultura/2015/490100/transmuntanus-matome-pasan-final-del-concurso-pop-rock.html", counter: 1
Url.create long: "http://www.lavanguardia.com/economia/marketing-publicidad/20150112/54423278382/ambito-digital-comercial-concentraran-demanda-profesionales-2015.html", counter: 3

(33..127).each do |n|
  Url.create(long: "Url #{n}", counter: n)
end