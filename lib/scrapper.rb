require_relative '../lib/rank.rb'
require_relative '../lib/song.rb'
require 'nokogiri'
require 'pry'
require 'open-uri'

class FinalScrapper
    attr_accessor :scrapper_name, :song, :chart_elements, :rank, :artist, :peak, :peakdate, :song
    @@Class_Constructor = []
    @@scrapped_ranks = []
    @@scrapped_songs = []
    @@scrapped_artists = []
    @@scrapped_peaks = []
    @@scrapped_peakdates = [] 
    def initialize
        @doc = Nokogiri::HTML(open("https://www.billboard.com/charts/decade-end/hot-100"))
        @charting = @doc.css("article.ye-chart-item").text.split("\n").delete_if { |i| i == " "|| i == "" }
        @song_groups = [] 
        @charting.each_slice(5) { |i| @song_groups << i }
        self.chart_elements
        # binding.pry 
    end

    #### Scrapper should have abastract class methods that can create a new object using self.
    #### Scrapper should be a module?
   
    def self.chart_arr
        @song_groups
        end



    
    def chart_elements
        row_counter = 0 
        @song_groups.each do |row|
                #this is the entire row. Inititializes objects here
                # creates an artist object and associates the other elements to that artist.
                @@scrapped_ranks << row[0] #=> Rank.new(row[0])
                @@scrapped_songs << row[1] #=> Song.new(row[1])
                @@scrapped_artists << row[2] #=> Artist.new(row[2])
                @@scrapped_peaks << row[3] #=> Peak.new(row[3])
                @@scrapped_peakdates << row[4] #=> PeakDate.new(row[4])
            end
            binding.pry 
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


scrape = FinalScrapper.new
binding.pry 
end