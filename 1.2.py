def sum_multiples(multiple, limit):
  n = (limit - 1) / multiple
  return n * (n + 1) / 2 * multiple

print(sum_multiples(3, 1000) + sum_multiples(5, 1000) - sum_multiples(15, 1000))
