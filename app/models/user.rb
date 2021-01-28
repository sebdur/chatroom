class User < ApplicationRecord
  validates_uniqueness_of :username

  def self.generate
    animals = ['Tiger', 'Crocodile', 'Snake', 'Bat', 'Raven', 'Wolf']
    colors = ['Black', 'White', 'Red', 'Blue', 'Orange', 'Green']
    number = rand.to_s[2..4]
    username = "#{animals.sample}-#{colors.sample}-#{number}"
    create(username: username)
  end

end
