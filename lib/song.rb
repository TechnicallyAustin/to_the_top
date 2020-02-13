require 'pry'
require 'nokogiri'
require 'open-uri'
require_relative '../lib/scrapper.rb'
class Song
@@all = []
attr_accessor :name, :peak_rank, :peak_date, :artist, :year, :current_rank
def initialize(name)
    @name = Scrape.name
    @peak_rank = Scrape.peak_rank
    @artist = Scrape.artist
    @year = Scrape.year
    @current_rank = Scrape.current_rank
    
end



end
