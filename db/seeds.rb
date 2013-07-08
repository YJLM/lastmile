# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# organizations
itesm = Organization.create(name: 'ITESM')
mit = Organization.create(name: 'MIT')

def create_user(organization, args)
  u = User.new args
  u.organization_id = organization.id
  unless u.save
    puts u.errors.inspect
  end
end

# users
create_user(itesm, name: 'Jorge M.', role: 'Beta Tester', mail: 'foo1@mit.edu', facebook: 'https://www.facebook.com/pages/Feather-México/254651244564796', twitter: 'https://twitter.com/FeatherMexico')
create_user(itesm, name: 'Gustavo B.', role: 'Beta Tester', mail: 'foo2@mit.edu', facebook: 'https://www.facebook.com/pages/Feather-México/254651244564796', twitter: 'https://twitter.com/FeatherMexico')
create_user(itesm, name: 'Manuel M.', role: 'Beta Tester', mail: 'foo3@mit.edu', facebook: 'https://www.facebook.com/pages/Feather-México/254651244564796', twitter: 'https://twitter.com/FeatherMexico')
create_user(itesm, name: 'Cecilia S.', role: 'Beta Tester', mail: 'foo4@mit.edu', facebook: 'https://www.facebook.com/pages/Feather-México/254651244564796', twitter: 'https://twitter.com/FeatherMexico')
create_user(itesm, name: 'Ana M.', role: 'Beta Tester', mail: 'foo5@mit.edu', facebook: 'https://www.facebook.com/pages/Feather-México/254651244564796', twitter: 'https://twitter.com/FeatherMexico')
create_user(itesm, name: 'Jose C.', role: 'Beta Tester', mail: 'foo6@mit.edu', facebook: 'https://www.facebook.com/pages/Feather-México/254651244564796', twitter: 'https://twitter.com/FeatherMexico')