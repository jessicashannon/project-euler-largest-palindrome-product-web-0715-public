# Implement your object-oriented solution here!

class LargestPalindromeProduct

  def palindrome(number)
    number.to_s == number.to_s.reverse
  end

  def answer
    array = []
    (600..999).each{|num1|
      (600..999).each{|num2|
        if palindrome(num1*num2)
          array << num1*num2
        end}}
    array.sort.last
  end

end
