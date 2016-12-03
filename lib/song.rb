require 'pry'

class Song
  attr_accessor :name, :artist

  def self.new_by_filename(filename)
    new_song = Song.new(filename.split(" - ")[1])
    new_song.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    # binding.pry
    new_song.artist.add_song(new_song)
    new_song
  end


  def initialize(name)
    @name = name
  end
end
