# Clase Factory principal
require "test/unit"
require_relative '../models/Persona/Familia.rb'
require_relative '../models/Persona/Visita.rb'

class Factory
	def self.dameObjeto(tipo, *arg)
     case tipo
     when "familia"
          return Familia.new(arg[0], arg[1], arg[2], arg[3],arg[4], arg[5])
     when "visita"
         return Visita.new(arg[0], arg[1], arg[2], arg[3],arg[4], arg[5])
     end
  end  
end