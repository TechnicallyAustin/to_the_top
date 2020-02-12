require 'pry'
require 'nokogiri'
require 'open-uri'
class Scrape
attr_accessor :artist, :position, :song, :featuring
@@all = []
doc = Nokogiri::HTML(open("https://www.billboard.com/charts/hot-100"))
binding.pry
def artist
    Nokogiri::HTML(doc.css())

end

def song
    # 
end

def position
end

# rank: "div.ye-chart-item_rank"
# title: "div.ye-chart-item_title"
# artist: "div.ye-chart-item_artist"
# peak: "span.decade-end-chart-item_peak-info-rank"
# peak date: "span.decade-end-chart-item-info_date"
# website "https://www.billboard.com/charts/decade-end/hot-100"



end


