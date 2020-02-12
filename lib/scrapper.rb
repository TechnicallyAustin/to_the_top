require 'pry'
require 'nokogiri'
require 'open-uri'

class Scrape
# extend
# include  
attr_accessor :artist, :position, :song, :featuring
@@all = []
doc = Nokogiri::HTML(open("https://www.billboard.com/charts/decade-end/hot-100"))

def rank
    @rank = []
    ranking = doc.css("div.ye-chart-item__rank")
end

def title
    @title = []
    Song.all 
    titles = doc.css("div.ye-chart-item__title")
end

def artist 
    Artist.all 

    artists = doc.css("div.ye-chart-item__artist")
    artists.each do |artist|
        artist = Artist.new(artist)
        #binding.pry
    end

end

def peak 
   peaks =  doc.css("span.decade-end-chart-item__peak-info-rank")
end

def peak_date
    dates = doc.css("span.decade-end-chart-item__peak-info-date")
end

def chart
   entire_chart =  doc.css("div.chart-details__item-list")
end



#Nokogiri BB100 CSS Selectors
# ------------------------
# rank:  doc.css("div.ye-chart-item__rank").first.text
# title: doc.css("div.ye-chart-item__title").first.text
# artist: doc.css("div.ye-chart-item__artist").first.text
# peak: doc.css("span.decade-end-chart-item__peak-info-rank").first.text
# peak date: doc.css("span.decade-end-chart-item__peak-info-date").first.text
# entire chart: doc.css("div.chart-details__item-list").first.text
# website "https://www.billboard.com/charts/decade-end/hot-100"



end


