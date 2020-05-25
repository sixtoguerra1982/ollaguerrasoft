puts '*** Cargando usuarios...'
13.times do |i|
 i+=1
 u = User.find_by(id: i)
 if  u.nil?
 	User.create(email: "correo#{i}@corre.cl", password: '123123')
 end
end