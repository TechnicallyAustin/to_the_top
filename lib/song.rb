require_relative '../lib/scrapper.rb'
require_relative '../lib/module.rb'
require 'pry'
require 'nokogiri'
require 'open-uri'

class Song
@@all = []
attr_reader :name, :peak_rank, :peakdate, :artist, :year, :rank
def initialize(name)
    @name = name
    @@all << self
end

def self.chart_songs
    FinalScrapper.songs
end

def create
    chart_songs.each do |song|
    song = Song.new(song)
    end
end
def self.create
    create
end

def self.create_songs
    chart_songs.each do |item|
        item = Song.new(item)
    end
   # binding.pry 
end



def self.song_groups
    FinalScrapper.song_groups
end

def self.all
    @@all 
end

def self.clear_all
    self.all = []
end

# song = Song.new(song)

song = Song.new(song)
binding.pry 
end 
