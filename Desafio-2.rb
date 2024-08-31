def fibonacci?(n)
  return false if n < 0

  fib_seq = [0, 1]
  while fib_seq.last < n
    fib_seq << fib_seq[-1] + fib_seq[-2]
  end

  fib_seq.include?(n)
end

print "Digite um número para verificar se pertence à sequência de Fibonacci: "
input = gets.chomp.to_i

if fibonacci?(input)
  puts "#{input} pertence à sequência de Fibonacci."
else
  puts "#{input} não pertence à sequência de Fibonacci."
end
