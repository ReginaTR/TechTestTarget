require 'json'

file_path = 'faturamento.json'
data = JSON.parse(File.read(file_path))

faturamentos = data.map { |entry| entry['faturamento'].to_f }.reject { |f| f.zero? }

menor_faturamento = faturamentos.min
maior_faturamento = faturamentos.max
media_mensal = faturamentos.sum / faturamentos.size

dias_acima_da_media = data.count do |entry|
  faturamento = entry['faturamento'].to_f
  faturamento > media_mensal
end

puts "Menor valor de faturamento: #{menor_faturamento}"
puts "Maior valor de faturamento: #{maior_faturamento}"
puts "Número de dias do mês em que o faturamento foi acima da média mensal: #{dias_acima_da_media}"
