require 'pry'
require 'nokogiri'
require 'open-uri'
class Scrape
attr_accessor :artist, :position, :song, :featuring
@@all = []
doc = Nokogiri::HTML(open("https://www.billboard.com/charts/decade-end/hot-100"))

binding.pry
def artist
    Nokogiri::HTML(doc.css())

end

def song
    # 
end

def position
end

#Nokogiri CSS Selectors
# ------------------------
# rank:  doc.css("div.ye-chart-item__rank").first.text
# title: doc.css("div.ye-chart-item__title").first.text
# artist: doc.css("div.ye-chart-item__artist").first.text
# peak: doc.css("span.decade-end-chart-item__peak-info-rank").first.text
# peak date: doc.css("span.decade-end-chart-item__peak-info-date").first.text
# entire chart: doc.css("div.chart-details__item-list").first.text
# website "https://www.billboard.com/charts/decade-end/hot-100"



end


