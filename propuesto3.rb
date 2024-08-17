class Calcular
  def initialize(numero)
    @numero = numero
  end

  def suma_pares
    suma = 0
    @numero.each_char do |char|
      digito = char.to_i
      suma += digito if digito.even?
    end
    suma
  end

  def suma_impares
    suma = 0
    @numero.each_char do |char|
      digito = char.to_i
      suma += digito if digito.odd?
    end
    suma
  end
end

print "Ingrese un número: "
numero_ingresado = gets.chomp

calculadora = Calcular.new(numero_ingresado)

suma_pares = calculadora.suma_pares
suma_impares = calculadora.suma_impares

puts "La suma de los dígitos pares es: #{suma_pares}"
puts "La suma de los dígitos impares es: #{suma_impares}"
