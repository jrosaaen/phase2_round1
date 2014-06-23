require_relative '../app/models/word'
File.foreach('db/fixtures/words.txt') do |line|
  Word.create!(name: line.chomp, sorted_word: line.chomp.downcase.split("").sort.join)
end

# File.foreach('db/fixtures/words.txt') do |line|
#   Word.find_by(name: line.chomp).update(sorted_word: line.chomp.downcase.split("").sort.join)
# end