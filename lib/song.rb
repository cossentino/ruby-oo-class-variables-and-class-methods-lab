


class Song

    @@count = 0
    @@genres = []
    @@artists = []

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_count_hash = {}
        @@genres.uniq.each do |genre|
            genre_count_hash[genre] = @@genres.count(genre)
        end
        genre_count_hash
    end

    
    def self.artist_count
        artist_count_hash = {}
        @@artists.uniq.each do |artist|
            artist_count_hash[artist] = @@artists.count(artist)
        end
        artist_count_hash
    end


    


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist

    end

    attr_accessor :name, :artist, :genre












end