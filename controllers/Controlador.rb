<<<<<<< HEAD
# require_relative '../controllers/BaseControlador'
# require_relative '../repositories/ServicioRepository'
# require_relative '../repositories/PersonaRepository'
# require_relative '../repositories/HabitacionRepository'

require_relative '../factories/Factory'
=======
require_relative '../controllers/BaseControlador.rb'
require_relative '../repositories/ServicioRepository.rb'
require_relative '../repositories/PersonaRepository.rb'
require_relative '../repositories/HabitacionRepository.rb'
require_relative '../factories/Factory.rb'
>>>>>>> 6f2ed550996c1ddb4143b8170646ae938ab97080

class Controlador

  attr_accessor :vista, :administracion

  def initialize(administracion, vista)
    @vista = vista
    @administracion = administracion
  end

  # ==================== Setters =====================

  # Registra cualquier tipo de objeto
  def registrar(tipo, *argumentos)

    # Objeto dinámico
    objeto = Factory.dameObjeto(tipo, *argumentos)

    case tipo
    when "habitacion"
      resultado = administracion.registrarHabitacion(objeto)
    when "servicio"
      resultado = administracion.registrarServicio(objeto)
    end

    # Muestra el resultado del registro
    vista.mostrarMensaje(resultado)

  end

  # ==================== Getters =====================
  def obtenerHabitaciones
    habitaciones = administracion.obtenerHabitaciones()
    vista.imprimirListado(habitaciones)
  end

  def obtenerServicios
    servicios = administracion.obtenerServicios()
    vista.imprimirListado(servicios)
  end

  # def cargarServicios
  #   servicioRepo = ServicioRepository.new
  #   servicios = servicioRepo.obtenerServicios
  # end

  # def cargarPersonas
  #   personaRepo = PersonaRepository.new
  #   personas = personaRepo.obtenerPersonas
  # end

  # def obtenerVisitasXFecha(fecha)
  #   puts "Lista de visitas en #{fecha} "
  #   arreglo = administracion.obtenerVisitasXFecha(fecha)
  #   vista.imprimirListado(arreglo)
  #   puts "-------------------"
  # end

  # def obtenerVisitasXRangoFecha(fechaInicial,fechaFin)
  #   puts "Lista de visitas entre #{fechaInicial} y  #{fechaFin}  "
  #   arreglo = administracion.obtenerVisitasXRangoFecha(fechaInicial,fechaFin)
  #   vista.imprimirListado(arreglo)
  #   puts "-------------------"
  # end

   def registrarPersona(tipo, *arg)
      persona = Factory.dameObjeto(tipo, *arg)
      resultado = administracion.registrarPersona(persona)
      #vista.mostrarMensaje(resultado)
   end
   def obtenerListaPersonas()
         puts "Lista de personas"
         arregloPersonas = administracion.obtenerListaPersonas()
         vista.imprimirListado(arregloPersonas)
         puts "-------------------"
   end

end

