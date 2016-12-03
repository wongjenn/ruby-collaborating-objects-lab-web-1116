require 'pry'

class Artist
  attr_accessor :name, :songs, :song

  @@all = []

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)

    result = all.find do |artist|
      if artist.name == name
        result = artist.name
      end
    end
    # binding.pry
    result.nil? ? Artist.new(name) : result
  end

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each { |song| puts "#{song.name}"}
  end
end
