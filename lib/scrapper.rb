require_relative '../lib/rank.rb'
require_relative '../lib/song.rb'
require 'nokogiri'
require 'pry'
require 'open-uri'

class FinalScrapper
    attr_accessor :song, :chart_elements, :rank, :artist, :peak, :peakdate, :song, :scrapper_name
    @@Class_Constructor = []
    @@scrapped_ranks = []
    @@scrapped_songs = []
    @@scrapped_artists = []
    @@scrapped_peaks = []
    @@scrapped_peakdates = [] 
    @@song_groups = [] 
    def initialize 
        @doc = Nokogiri::HTML(open("https://www.billboard.com/charts/decade-end/hot-100"))
        @charting = @doc.css("article.ye-chart-item").text.split("\n").delete_if { |i| i == " "|| i == "" }
        @charting.each_slice(5) { |i| @@song_groups << i }
        @song = song
        @artist = artist 
        @rank = rank 
        @peak = peak
        @peakdsate = peakdate 
        self.chart_elements
        Song.create_songs
        # binding.pry 
    end
   

    def chart_elements
        row_counter = 0 
        @@song_groups.each do |row|
                #this is the entire row. Inititializes objects here
                # creates an artist object and associates the other elements to that artist.
                @@scrapped_ranks << row[0] #=> Rank.new(row[0])
                @@scrapped_songs << row[1] #=> Song.new(row[1])
                @@scrapped_artists << row[2] #=> Artist.new(row[2])
                @@scrapped_peaks << row[3] #=> Peak.new(row[3])
                @@scrapped_peakdates << row[4] #=> PeakDate.new(row[4])
            end
        end

    def self.artists
        @@scrapped_artists
    end
    
    def self.songs
        @@scrapped_songs
    end

    def self.ranks
        @@scrapped_ranks
    end

    def self.peaks
        @@scrapped_peaks
    end

    def self.peakdates
        @@scrapped_peakdates
    end

    def self.song_groups
        @@song_groups
    end

    def self.artist_builder
        FinalScrapper.artists.each { |artist| Artist.new(artist)}
        binding.pry 
    end





scrape = FinalScrapper.new
binding.pry 
end