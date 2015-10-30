# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.empty?
    @sum = 0
  else
    @sum = arr.inject {|sum, i| sum+i}
  end
end

def max_2_sum arr
  length = arr.length
  if arr.empty?
    @max_2 = 0
  elsif length == 1
    @max_2 = arr[0]
  else
    arr.sort!.reverse!
    @max_2 = arr[0] + arr[1]
  end
end

def sum_to_n? arr, n
  if arr.empty?
    return false
  elsif arr.length == 1
    return false
  else
    combinations = arr.combination(2).to_a
    combinations.each do |combo|
      if combo[0] + combo[1] == n 
        return true
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, " + name 
end

def starts_with_consonant? s
  if s =~ /\A[^aeiou][a-z]*\z/i and s=~ /\A[a-z][a-z]*\z/i
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if s =~ /\A[10]*\z/ and !s.empty?
    decimal = s.to_i(2)
    if decimal % 4 == 0
      return true
    end
  end
  return false
end

# Part 3
class BookInStock
  def initialize(isbn, price)
    if isbn.empty?  or price <= 0
      raise ArgumentError.new("Invalid parameters")
    else
      @isbn = isbn
      @price = price
    end
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price
    @price
  end
  
  def price=(new_price)
    @price = new_price
  end
  
  def price_as_string
    @price_string = self.price.to_s
    if @price_string =~ /\A\w*\.\w{2}\z/
      @price_as_string = "$" + @price_string
    elsif @price_string =~ /\A\w*\.\w\z/
      @price_as_string = "$" + @price_string + "0"
    elsif @price_string =~ /\A\w*\z/
      @price_as_string = "$" + @price_string + ".00"
    else
      @price_as_string = @price_string.round(2)
    end
  end
end