require_relative '../lib/scrapper.rb'

class Artist
@@all = []
attr_reader :name, :song, :position, :peaks, 
def initialize(name)
    @name = Scrape.name(name)
    @@all << self 
end



end
