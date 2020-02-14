require_relative '../lib/rank.rb'
require_relative '../lib/song.rb'
require 'nokogiri'
require 'pry'
require 'open-uri'

class FinalScrapper
    attr_accessor :scrapper_name, :artist, :peak, :peak_date, :rank, :song, :chart_elements
    @doc = Nokogiri::HTML(open("https://www.billboard.com/charts/decade-end/hot-100"))
    @@charting = @doc.css("article.ye-chart-item").text.split("\n").delete_if { |i| i == " "|| i == "" }
    @@chart_arr = [] 
    @@charting.each_slice(5) { |i| @@chart_arr << i }
   
    def initialize
        @artists = []
        @peaks = []
        @peak_dates = []
        @ranks = []
        @songs = []
    end

    def chart_elements
        @@charting.each_slice(5) { |i| @@chart_arr << i }
        @@chart_arr 

    end
    
    def rank
        row_count = 0
        col_count = 0
        @@chart_arr.each {|i| @ranks << i[0] }
        @ranks.each { |i| i = Rank.new(rank)}
        # @@chart_arr[row_count].each do |i|
            # i[0] = Rank.new(rank)
            # i[1] = Song.new(song)
            # i[2] = Artist.new(name)
            # i[3] = Peak.new(peak)
            # i[4] = PeakDate.new(date)
            # row_count += 1 
            
        binding.pry 

        
    end

    def song
        @@chart_arr.each {|i| @songs << i[1] }
        @songs 
    end

    def aritst 
        @@chart_arr.each {|i| @artists << i[2] }
        @artists 
    end
    
    def peak
        @@chart_arr.each {|i| @peaks << i[3] }
        @peaks 
    end

    def peak_date
        @@chart_arr.each {|i| @peak_dates << i[4] }
        @peak_dates.chomp
        #remove the words "Peak Date"
    end 

    # def class_builder
    #     @@chart_arr.each do |row|
    #         row[0] = Rank.new(row[0])
    #         row[1] = Song.new(row[1])
    #         row[2] = Artist.new(row[2])
    #         row[3] = Peak.new(row[3])
    #         row[4] = PeakDate.new(row[4])
    #     end 
    #     binding.pry 
    # end
end
artists_scrape = FinalScrapper.new
binding.pry 
