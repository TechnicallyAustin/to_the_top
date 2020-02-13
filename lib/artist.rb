require_relative '../lib/scrapper.rb'
require 'pry'
require 'nokogiri'
require 'open-uri'

class Artist
@@all = []
attr_reader :name, :song, :position, :peaks, 
def initialize(name)
    @name = name
    @@all << self 

end

def builder
end


end
