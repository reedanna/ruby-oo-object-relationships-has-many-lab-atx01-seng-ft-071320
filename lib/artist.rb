class Artist
    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        @songs = Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        newsong = Song.new(name)
        newsong.artist = self
    end

    def self.song_count
        Song.all.count
    end
end