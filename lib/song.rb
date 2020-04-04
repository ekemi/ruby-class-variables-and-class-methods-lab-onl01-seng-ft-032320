class Song

  attr_accessor :genre, :name, :artist
  @@genres =[]
  @@count = 0
  @@artists = []
   def initialize(genre, name,artist)
     @name = name
     @genre = genre
     @artist = artist
     @@count +=1

     if !@@genres.inlude?(self.genre)
          @@genres << self.genre
        end

    if !@@artists.inlude?(self.artists)
      @@artists << self.artists
    end


   end

   def self.count
     @@count
   end

   def self.genres
     @@genres
   end

   def  self.artists
      @@artists
   end

   def self.genre_count

   end

   def self.artist_count

   end
end
