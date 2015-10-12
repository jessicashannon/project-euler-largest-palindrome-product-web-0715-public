# Implement your procedural solution here!

# What is the largest palindrome product of two three-digit numbers?


# Of the set of products of three-digit numbers
# Check for palindrome

def palindrome(number)
  number.to_s == number.to_s.reverse
end

def largest_palindrome_product
  array = []
  (600..999).each{|num1|
    (600..999).each{|num2|
      if palindrome(num1*num2)
        array << num1*num2
      end}}
  array.sort.last
end
