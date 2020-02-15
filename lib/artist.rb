require_relative '../lib/scrapper.rb'
require_relative '../lib/module.rb'
require 'pry'
require 'nokogiri'
require 'open-uri'
extend AllClasses::ClassMethods

class Artist 
    @@all = []
attr_reader :name, :song, :peak, :peak_date, :FinalScrapper 
def initialize(name)
@name = name 
@songs = []
@@all << self
end

def songs
    @songs
end

def self.chart_art
    FinalScrapper.artists
end

def self.create(artist)
    artist = Artist.new(artist)
end

def self.all
    @@all
end

# FinalScrapper.artist.each do |artist|
artist = Artist.new("artist")
bind.gpry
end