require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include  Paramable
  @@artists = []

  def initialize
    super
    @songs = []
  end



  def self.all
    @@artists
  end

  # def self.find_by_name(name)
  #   p "artist findbyname"
  #   x = @@artists.detect {|a| a.name == name}
  #   p x
  #   x
  # end


  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
