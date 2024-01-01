def substring_counter(string)
  subs_count = {}
  substrings = string.split
  substrings.uniq.map { |substring| subs_count[substring] = 0 }
  substrings.map { |substring| subs_count[substring] += 1 }
  return subs_count
end

puts 'Enter string'
puts substring_counter(gets)
