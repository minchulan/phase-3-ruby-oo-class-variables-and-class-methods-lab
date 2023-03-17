require 'pry'
class Song
    @@count = 0
    @@genres = []
    @@artists = []
    @@artist_count = {}
    @@genre_count = {}

    attr_accessor :name, :artist, :genre 

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << self.genre  #add genres to the array whenever a new song is created.
        @@artists << self.artist #add artists to the array whenever a new song is created.   
    end 

    def self.count
        @@count 
    end

    def self.genres
        @@genres.uniq
    end 
    
    def self.artists 
        @@artists.uniq
    end 

    def self.artist_count
        @@artists.tally
        #returns a hash of artists and the number of songs that have those artists
    end

    def self.genre_count
        @@genres.tally
        #returns a hash of genres and the number of songs that have those genres
    end 

end

hit_me_baby_one_more_time = Song.new('hit me baby one more time', 'Brittany Spears', 'pop')
lucifer = Song.new("Lucifer", "Jay-Z", "rap")
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
# binding.pry