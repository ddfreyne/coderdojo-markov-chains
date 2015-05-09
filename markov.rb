require './utils'

characters = read_text.chars
table = {}

characters.each_cons(100) do |seq|
  table[seq.all_but_last] ||= []
  table[seq.all_but_last] << seq.last
end

# startLetter = characters.sample
start = table.keys.sample
start.each { |c| print(c) }
2000.times do
  new_sequence = table[start]
  if new_sequence.nil?
    exit
  end
  new_letter = new_sequence.sample
  print(new_letter)
  start = start.all_but_first + [new_letter]
end
puts

# Examples:
#
#   4.times { puts('hello') }
#   [1, 2, 3, 5, 8].each { |e| puts(e * 2) }
#   numbers = [1, 2, 3, 5, 8]
#   numbers << 599
#   numbers.each { |e| puts(e * 2) }
#   [1, 2, 3, 5, 8].each_cons(2) { |seq| puts(seq.inspect) }
#   counts = { 'a' => 3, 'b' => 5, 'z' => 9000 }
#   counts['a']
#   counts['a'] = 800
#   counts['b'] ||= []
#   counts.keys
#   [1, 2, 3, 4, 5, 6, 7, 8, 9].sample
#   [1, 2, 3, 4, 5].all_but_first
#   [1, 2, 3, 4, 5].all_but_last
