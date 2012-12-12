def palindrome?(num)
  str = num.to_s
  (0...(str.length/2)).each do |i|
    if str[i] != str[-(i+1)]
      return false
    end
  end
  return true
end

ans = 0
mult = 0
(100...999).each do |num1|
  (100...999).each do |num2|
    mult = num1 * num2
    if mult > ans and palindrome? mult
      ans = mult
    end
  end
end
puts ans