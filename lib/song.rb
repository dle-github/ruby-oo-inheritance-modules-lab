require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include  Paramable


  @@songs = []

  def initialize
    super
  end



  def self.all
    @@songs
  end

  # def self.find_by_name(name)
  #   p "song findbyname"
  #   x = @@songs.detect {|a| a.name == name}
  #   p x 
  #   x
  # end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
