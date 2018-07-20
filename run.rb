require "pry"

class Photo
  attr_accessor :user
  @@all = []

  def initialize
    @@all << self
  end

  def user
    #who does this photo belong to?

  end

  def self.all
    @@all
  end

end

binding.pry
nil
