require "Prime"

composite = 600851475143
ans = 0
Prime.each(composite**0.5) do |prime|
  if composite % prime == 0
    ans = prime
  end
end

puts ans