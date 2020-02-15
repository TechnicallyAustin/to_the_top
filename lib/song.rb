require_relative '../lib/scrapper.rb'
require_relative '../lib/module.rb'
require 'pry'
require 'nokogiri'
require 'open-uri'

class Song
@@all = []
attr_accessor :name, :peak_rank, :peakdate, :artist, :year, :rank
def initialize(name)
    @name = name
    @peak_rank  
    @artist  
    @year 
    @current_rank
    @artist = artist 
    
end

def chart_songs
    FinalScrapper.songs
end



def self.all
    @@all
end

def self.clear_all
    self.all = []
end

end
