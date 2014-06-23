class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagrams(word)
    sorted = word.downcase.split("").sort.join
    self.where(sorted_word: sorted)
  end
end