# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# organizations

Organization.all.each do |o|
  o.destroy
end

User.all.each do |u|
  u.destroy
end

itesm = Organization.create(name: 'ITESM')
mit = Organization.create(name: 'MIT')

@user_index = 1

def create_user(organization, args)
  u = User.new args
  u.id = @user_index
  u.organization_id = organization.id
  unless u.save
    puts u.errors.inspect
  end
  @user_index = @user_index + 1
end

# itesm users
create_user(itesm, name: 'Cecilia S.', role: 'Designer', mail: 'csilvam@mit.edu', facebook: 'https://www.facebook.com/cecisilva89', twitter: 'https://twitter.com/CeciS_89')
create_user(itesm, name: 'Gustavo B.', role: 'Developer', mail: 'gbn@mit.edu', facebook: 'https://www.facebook.com/gustavo.beauregard', twitter: 'https://twitter.com/gustavobnoriega')
create_user(itesm, name: 'Jorge M.', role: 'Data Analyst', mail: 'jmoreno@mit.edu', facebook: 'https://www.facebook.com/jorgemsb', twitter: 'https://twitter.com/FeatherMexico')
create_user(itesm, name: 'Manuel M.', role: 'Developer', mail: 'vmmf08@mit.edu', facebook: 'https://www.facebook.com/ManuelMartinezF', twitter: 'https://twitter.com/FeatherMexico')
create_user(itesm, name: 'Ana M.', role: 'Data Analyst', mail: 'amedrano@mit.edu', facebook: 'https://www.facebook.com/ana.mendez.1253', twitter: 'https://twitter.com/FeatherMexico')
create_user(itesm, name: 'Jose C.', role: 'Data Analyst', mail: 'jcohen18@mit.edu', facebook: 'https://www.facebook.com/pepe.cuervo1', twitter: 'https://twitter.com/FeatherMexico')

# mit users
create_user(mit, name: 'Dr. Edgar B.', role: nil, mail: 'eblanco@mit.edu', facebook: nil, twitter: nil)
create_user(mit, name: 'Sergio C.', role: nil, mail: 'sergioac@mit.edu', facebook: nil, twitter: nil)
create_user(mit, name: 'Alexis B.', role: nil, mail: 'hickmana@mit.edu', facebook: 'https://www.facebook.com/alexisjhickman', twitter: 'https://twitter.com/hickmana')
create_user(mit, name: 'Suzanne G.', role: nil, mail: 'segreene@mit.edu', facebook: 'https://www.facebook.com/', twitter: 'https://twitter.com/')
create_user(mit, name: 'Margo D.', role: 'Data Collection', mail: 'mdawes@mit.edu', facebook: 'https://www.facebook.com/margo.dawes', twitter: '')
create_user(mit, name: 'Kirsten A.', role: 'Data Collection', mail: 'kaugdahl@mit.edu', facebook: 'https://www.facebook.com/kirsten.augdahl', twitter: 'https://twitter.com/augdahl')
create_user(mit, name: 'Jamal E.', role: 'Data Collection', mail: 'elkhader@mit.edu', facebook: 'https://www.facebook.com/jamal.elkhader', twitter: 'https://twitter.com/lamaj')
create_user(mit, name: 'Paola R.', role: 'Data Collection', mail: 'pruiz@mit.edu', facebook: 'https://www.facebook.com/paola.ruiz.79677', twitter: nil)
create_user(mit, name: 'Judy C.', role: 'Data Collection', mail: 'changcj@mit.edu', facebook: 'https://www.facebook.com/judy.chang.9216', twitter: 'https://twitter.com/changcjudy')
create_user(mit, name: 'Alex O.', role: 'Data Collection', mail: 'alex93@mit.edu', facebook: 'https://www.facebook.com/alex.oliva.37', twitter: nil)
create_user(mit, name: 'Erin K.', role: 'Data Collection', mail: 'ekenney@mit.edu', facebook: 'https://www.facebook.com/erin.kenney.98', twitter: nil)
create_user(mit, name: 'Aish N.', role: 'Data Collection', mail: 'aishn@mit.edu', facebook: 'https://www.facebook.com/aishnarayan', twitter: 'https://twitter.com/101')
create_user(mit, name: 'Angela W.', role: 'Data Collection', mail: 'yinjwang@mit.edu', facebook: 'https://www.facebook.com/yinjen.wang', twitter: nil)
create_user(mit, name: 'Lesley W.', role: 'Data Collection', mail: 'leswang@mit.edu', facebook: 'https://www.facebook.com/laa.jones.9', twitter: nil)
create_user(mit, name: 'Yin Jin Lee', role: nil, mail: 'yinjin@mit.edu', facebook: nil, twitter: nil)
create_user(mit, name: 'Nathalia Z.', role: nil, mail: 'nzambuzi@mit.edu', facebook: 'https://www.facebook.com/nathalia.zambuzi', twitter: nil) 

# itesm users v2
create_user(itesm, name: 'Susana C.', role: 'Developer', mail: 'scarmol@mit.edu', facebook: 'https://www.facebook.com/susiecm', twitter: 'https://twitter.com/suecarmol')
create_user(itesm, name: 'Samantha S.', role: 'Data Analyst', mail: 'ssalames@mit.edu', facebook: 'https://www.facebook.com/samantha.salame', twitter: '')
create_user(itesm, name: 'Gerardo M.', role: 'Data Analyst', mail: 'gmendez@mit.edu', facebook: 'https://www.facebook.com/Gerardo.MendezR77', twitter: '')
create_user(itesm, name: 'Joel C.', role: 'Developer', mail: 'jcano@mit.edu', facebook: '', twitter: 'https://twitter.com/FeatherMexico')
create_user(itesm, name: 'Salomón W.', role: 'Data Analyst', mail: 'salomonw@mit.edu', facebook: 'https://www.facebook.com/s.wollenstein1', twitter: 'https://twitter.com/salomonwb')
create_user(itesm, name: 'Gabriel A.', role: 'Designer', mail: 'arrietap@mit.edu', facebook: '', twitter: '')
create_user(itesm, name: 'Arturo A.', role: 'Developer', mail: 'arturoaguirretorres@gmail.edu', facebook: 'https://www.facebook.com/arturoat', twitter: 'https://twitter.com/arturo_kt')

