# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = arr.sum
  return result
end

def max_2_sum arr
  arr.sort!
  result = 0
  if arr.length > 1
    result += arr[arr.length-1]
    result += arr[arr.length-2]
  elsif arr.length == 1
    result += arr[0]
  end
  return result
end

def sum_to_n? arr, n
  arr.sort!
  found = false
  high = arr.length-1
  low = 0
  val = 0
  while not found do
    if low >= high
      break
    end
    val = arr[high] + arr[low]
    if val > n
      high -= 1;
    elsif val < n
      low += 1;
    elsif val == n
      found = true
    end
  end
  return found
end

# Part 2

def hello(name)
  str = "Hello, " + name
  return str
end

def starts_with_consonant? s
  result = false
  exp = /[[^aeiouAEIOU]&&[[:alpha:]]]/
  if ((exp =~ s) == 0)
    result = true
  end
  return result
end

def binary_multiple_of_4? s
  result = false
  exp = /^([0-1]*1[0-1]*00)$|^(0+)$/
  if ((exp =~ s) == 0)
    result = true
  end
  return result
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.length == 0
      raise ArgumentError.new("Invalid ISBN!")
    else
      @isbn = isbn
    end
    if price <= 0
      raise ArgumentError.new("Invalid Price!")
    else
      @price = price
    end
  end
  
  def isbn
    return @isbn
  end
  
  def price
    return @price
  end
  
  def isbn=(i)
    if i.length == 0
      raise ArgumentError.new("Invalid ISBN!")
    else
      @isbn = i
    end
  end
  
  def price=(p)
    if p <= 0
      raise ArgumentError.new("Invalid Price!")
    else
      @price = p
    end
  end
  
  def price_as_string
    str = '$' + "%.2f" % @price
    return str
  end
end
