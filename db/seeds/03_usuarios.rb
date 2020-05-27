puts '*** Cargando usuarios...'
User.all.destroy_all
13.times do |i|
 i+=1
 u = User.find_by(id: i)
 if  u.nil?
 	User.create(email: "correo#{i}@correo.cl", password: '123123')
 end
end
User.create(email: "admin@admin.cl", password: 'admin123' , role: 1)
