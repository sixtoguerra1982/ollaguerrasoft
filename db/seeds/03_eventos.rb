puts "*** Cargando Eventos..."
arr = [1,9,5,2,4,9,5,8,7,9,9,8,2,7,5,8,279,2,9]
13.times do |i|
	i+=1
	Evento.create(
		comuna_id: arr[rand(arr.count)],
    	descripcion: Faker::Company.catch_phrase,
    	organizacion: Faker::Company.name,
    	encargado: Faker::Company.profession, 
    	direccion: Faker::Address.street_address,
    	dias_horarios: Faker::Lorem.sentences,
    	organizador: Faker::Company.name,
    	photo: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amerikickkansas.com%2Fhome%2Fdefault-image%2F&psig=AOvVaw3D9peCvEtB9Y0DNF1h--dK&ust=1590396670152000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCNim0raPzOkCFQAAAAAdAAAAABAD"
	)
end