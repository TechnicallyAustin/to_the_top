require_relative '../lib/scrapper.rb'
require_relative '../lib/rank.rb'
require_relative '../lib/module.rb'
require 'pry'
require 'nokogiri'
require 'open-uri'

class Rank 
    attr_accessor :artist, :peak, :peak_date, :song 
    @@all = []
    def initialize(rank)
        @rank = rank 
        @@all << self 
        
    end


    def self.all
        @@all 
    end

    def chart_ranks
        FinalScrapper.ranks
    end
    

end