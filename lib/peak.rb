require_relative '../lib/scrapper.rb'
require_relative '../lib/module.rb'
require 'pry'
require 'nokogiri'
require 'open-uri'

class Peak
attr_accessor :song, :artist, :peak_date, :rank
@@all = []
def initialize(peak)
    @peak = peak 
    @@all << self
    binding.pry 
end
 def self.all
    @@all
 end
 
 def chart_peaks
    FinalScrapper.peaks
 end
 


end
sc