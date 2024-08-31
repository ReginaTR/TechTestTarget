def inverter_string(str)
  resultado = ''

  (str.length - 1).downto(0) do |i|
    resultado << str[i]
  end

  resultado
end

string_inicial = "Teste de string"
string_invertida = inverter_string(string_inicial)

puts "String inicial: #{string_inicial}"
puts "String invertida: #{string_invertida}"
