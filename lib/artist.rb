require_relative '../lib/scrapper.rb'
require 'pry'
require 'nokogiri'
require 'open-uri'

class Artist
    @@all = []
    attr_reader :name, :song, :position, :peaks, 
    def initialize(name)
        @name = 
        @@all << self 
        artist_scrapper = Scrape.new
    binding.pry

end

def builder
    @aritsts_builder = artist_scrapper.chart_elements
    counter = 0 
    @aritsts_builder.each do |row|
        while counter < row.length do
            el_index = 2
            row.each do |col|
                bidning.pry 
            end
        end
    end


end
end
artist = Artist.new
binding.pry