module EventosHelper
	def with_evento?
   	 if current_user.evento.nil?
   	 	false
   	 else
   	 	if current_user.evento.persisted?
   	 		true
   	 	else
   	 		false
   	 	end
   	 end
   end
end
