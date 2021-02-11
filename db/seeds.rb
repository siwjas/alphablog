# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Criando as Categorias
Category.create name: 'Fitness'
Category.create name: 'Helth'
Category.create name: 'Movies'
Category.create name: 'Auto Sports'

# Criando nossos Users
User.create username: 'rakkan', email: 'wjas@globo.com', password: '123456', admin: true
User.create username: 'wellington', email: 'wjas.ma@gmail.com', password: '123456'