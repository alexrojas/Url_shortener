class Url < ApplicationRecord
  def self.random_letters
  all_letters = ('a'..'z').to_a

  return all_letters.sample
  end

  def self.random_string(num_of_letters = 3)
  output = ""

  num_of_letters.times do |char|
    output << self.random_letters
  end
  return output
  end

end
