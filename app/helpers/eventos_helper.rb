module EventosHelper
	def with_evento?
   	 if current_user.evento.nil?
   	 	true
   	 else
   	 	if current_user.evento.persisted?
   	 		false
   	 	else
   	 		true
   	 	end
   	 end
   end
end
