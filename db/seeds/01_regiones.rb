puts "*** Cargando regiones..."
regiones = [
	{ id: 1, nombre: 'Tarapacá' },
	{ id: 2, nombre: 'Antofagasta' },
	{ id: 3, nombre: 'Atacama' },
	{ id: 4, nombre: 'Coquimbo' },
	{ id: 5, nombre: 'Valparaíso' },
	{ id: 6, nombre: "Libertador General Bernardo O'Higgins" },
	{ id: 7, nombre: 'Maule' },
	{ id: 8, nombre: 'Bío-Bío' },
	{ id: 9, nombre: 'Araucanía' },
	{ id: 10, nombre: 'Los Lagos' },
	{ id: 11, nombre: 'Aysén' },
	{ id: 12, nombre: 'Magallanes' },
	{ id: 13, nombre: 'Metropolitana' },
	{ id: 14, nombre: 'Los Ríos' },
	{ id: 15, nombre: 'Arica y Parinacota' },
	{ id: 16, nombre: 'Ñuble' },
]
regiones.each do |attrs|
	re = Region.find_or_create_by(id: attrs[:id])
	re.update(attrs)
end