require '/lib/scrapper.rb'
require_relative '../lib/module.rb'
require 'pry'
require 'nokogiri'
require 'open-uri'


class PeakDate
    attr_accessor :song, :artist, :rank, :peak, :date 
    @@all = []
    def initialize(date)
        @date = date 
        @@all << self
    end



    def self.all
        @@all 
    end

end




