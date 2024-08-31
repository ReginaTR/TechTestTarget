faturamento = {
  'SP' => 67_836.43,
  'RJ' => 36_678.66,
  'MG' => 29_229.88,
  'ES' => 27_165.48,
  'Outros' => 19_849.53
}

total_mensal = faturamento.values.sum

percentuais = faturamento.transform_values do |valor|
  percentual = (valor / total_mensal) * 100
  percentual.round(2)
end

puts "Percentual de representação por estado:"

percentuais.each do |estado, percentual|
  puts "#{estado}: #{percentual}%"
end
