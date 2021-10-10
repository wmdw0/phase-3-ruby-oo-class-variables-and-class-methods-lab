class Song
  # GENRES = ["Hip-Hop", "Pop", "Jazz"]
  # @@count = 3
  
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << self.genre
        @@artists << self.artist
    end

    def self.count 
      @@count
    end 
    def self.artists
      arr = @@artists[0..2]
      arr = arr.uniq
      puts arr
      return arr
    end
    def self.print_all_artists
      self.artists.each do |artist|
        puts artist(@name)
      end
    end
    
    def self.genres
      arr = @@genres[0..2]
      arr = arr.uniq
      # arr.insert(0, @@genres[0])
      # arr.insert(1, @@genres[1])
      # arr.insert(2, @@genres[2])
      puts arr
      return arr
    end 

   def self.genre_count
    arr = @@genres[0..2]
    x = arr.count("rap")
    y = arr.count("pop")
    puts x
    puts y
    h = Hash["pop"=> y, "rap"=> x]
    # h = {"pop": y, "rap": x}
    puts "#{h['pop']}"
    return h
   end 

   def self.artist_count
    arr = @@artists[0..2]
    x = arr.count("Jay-Z")
    y = arr.count("Brittany Spears")
    puts x
    puts y
    # h = Hash.new( "artists")
    h = Hash["Jay-Z"=> x, "Brittany Spears"=> y]
    puts "#{h['Jay-Z']}"
    return h
   end
    
end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
Song.new("Lucifer", "Jay-Z", "rap")
Song.new("hit me baby one more time","Brittany Spears", "pop")

puts Song.count
puts Song.artists