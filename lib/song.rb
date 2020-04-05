require 'pry'
class Song

  attr_accessor :genre, :name, :artist
  @@genres =[]
  @@count = 0
  @@artists = []
   def initialize(name,artist,genre)
     @name = name
     @genre = genre
     @artist = artist
     @@count +=1
     @@genres << self.genre
    @@artists << self.artist


#binding.pry
   end

   def self.count
     @@count
   end

   def self.genres
     @@genres.uniq!
   end

   def  self.artists
      @@artists.uniq!
   end

   def self.genre_count

      hash = {}
    @@genres.each do |genre|
          if !hash[genre]
            hash[genre] =1

          else
            hash[genre]+=1
          end
      #
      # if !hash[self.genre].include?(self.genre)
      #     hash[self.genre] = []
      #     hash[self.genre] << self.genre.count
      #
      #      binding.pry
    # if !has[self.genre].include?(self.genre)
    #   hash[self.genre] << self.count
    end
    hash
   end

   def self.artist_count
     has= {}
     @@artists.each do |artist|

       if !hash[artist]
             hash[artist] = 1
        else

          hash[artist]+=1
   end
   hash
end
