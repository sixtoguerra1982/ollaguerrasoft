module EventosHelper
	def with_evento?
   	 if current_user.evento.nil?
   	 	true
   	 else
   	 	false
   	 end
   end
end
