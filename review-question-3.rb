require "pry"
# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a Comment class

class User

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # def post(title)
  ##   sandwich_photo = Photo.new
  ##   sandwich_photo.user = sophie
  #
  #   title = Photo.new
  #   title.user = self
  # end

  def photos
    #gets user's phots
    Photo.all.select do |photo|
      photo.user == self
    end
  end


end

########################
class Photo
  attr_accessor :user, :comments

  @@all = []

  def initialize
    comments = []
    @@all << self
  end

  # def user
  #   #who does this photo belong to?
  #
  # end

  def comments
    Comment.all.select do |comment|
      comment.photo == self
    end
  end

  def make_comment(feedback)
    comment = Comment.new(feedback)
    comment.photo = self
    # binding.pry
  end

  def self.all
    @@all
  end

end

#########################
class Comment

  attr_accessor :photo

  @@all = []

  def initialize(feedback)
    @feedback = feedback
    @@all << self
  end

  def self.all
    @@all
  end

end
# binding.pry

sandwich_photo = Photo.new
sophie = User.new("Sophie")
sandwich_photo.user = sophie
# sandwich_photo.user.name
# # => "Sophie"

# user = sophie
# puts user.photos
# # => [#<Photo:0x00007fae2880b370>]
#
#
# sandwich_photo.comments
# # => []
#
sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
# puts sandwich_photo.comments
# # => [#<Comment:0x00007fae28043700>]
#
Comment.all
# #=> [#<Comment:0x00007fae28043700>]
#
#
# binding.pry
# nil
