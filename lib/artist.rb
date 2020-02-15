require_relative '../lib/scrapper.rb'
require_relative '../lib/module.rb'
require 'pry'
require 'nokogiri'
require 'open-uri'
extend AllClasses::ClassMethods

class Artist
    @@all = []
attr_accessor :name, :song, :peak, :peak_date, :FinalScrapper
def initialize(name)
@name = name 
@songs = []
@@all << self
end

def add_song(song)
    if @songs.include?(song)
        song 
    else
        @songs << song
    end
end

def songs
    @songs
end


def chart_artists
    FinalScrapper.artist
end






end
austin = Artist.new("Austin")
binding.pry 