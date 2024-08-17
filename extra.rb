contactos = {
  "juan" => "123-456-7890",
  "ana" => "987-654-3210",
  "mario" => "555-555-5555",
  "luisa" => "444-444-4444"
}

loop do
  puts "\nHash completo:"
  contactos.each do |nombre, celular|
    puts "#{nombre.capitalize}: #{celular}"
  end

  print "Ingrese el nombre (en minúsculas) o 'salir' para terminar: "
  nombre_ingresado = gets.chomp.downcase

  break if nombre_ingresado == 'salir'

  if contactos.has_key?(nombre_ingresado)
    puts "El número de celular de #{nombre_ingresado.capitalize} es: #{contactos[nombre_ingresado]}"
  else
    puts "El nombre '#{nombre_ingresado}' no existe en el hash."
  end
end

puts "Programa terminado."
