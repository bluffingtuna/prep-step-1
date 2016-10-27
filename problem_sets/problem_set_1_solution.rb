def array_times_two(array)
  times_two_array = []
  array.each do |element|
    times_two_array << element * 2
  end

  times_two_array
end

# *********************************************

def array_times_two!(array)
  array.each_index do |index|
    array[index] = array[index] * 2
  end

  array
end

# *********************************************

def uniq(array)
  uniq_array = []
  array.each do |element|
    uniq_array << element unless uniq_array.include?(element)
  end

  uniq_array
end

# *********************************************

def is_slippery?(n)
  (n % 3 == 0 || n % 5 == 0) && n % 15 != 0
end

def slippery_numbers(n)
  slippery_array = []
  current_number = 1

  until slippery_array.length == n
    slippery_array << current_number if is_slippery?(current_number)
    current_number += 1
  end

  slippery_array
end

# *********************************************

def two_sum_to_zero?(array)
  array.each_with_index do |element1, index1|
    array.each_with_index do |element2, index2|
      next if index1 == index2
      return true if element1 + element2 == 0
    end
  end

  false
end

# *********************************************

def is_magic_number?(n)
  string_digits = n.to_s.chars
  sum = 0

  string_digits.each do |digit_character|
    sum += digit_character.to_i
  end

  sum == 7
end

def magic_numbers(n)
  magic_numbers_array = []
  number = 1

  until magic_numbers_array.size == n
    magic_numbers_array << number if is_magic_number?(number)
    number += 1
  end

  magic_numbers_array
end
