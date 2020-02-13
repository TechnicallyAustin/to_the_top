require 'pry'
require 'nokogiri'
require 'open-uri'

class Scrape
# extend
# include  
attr_accessor :artist, :position, :song, :year, :chart, :title, :peak_date, :peak 
@@all = []
def initialize
@doc = Nokogiri::HTML(open("https://www.billboard.com/charts/decade-end/hot-100"))

end

def rank
    @rank = []
    rank = @doc.css("div.ye-chart-item__rank").text
    
end

def title
    @titles = []
    
    titles = @doc.css("div.ye-chart-item__title").text
end

def artist 
    artists = @doc.css("div.ye-chart-item__artist").text
end


def peak 
   peaks =  @doc.css("span.decade-end-chart-item__peak-info-rank").text
end

def peak_date
    dates = @doc.css("span.decade-end-chart-item__peak-info-date").text
end

def chart
   entire_chart =  @doc.css("div.chart-details__item-list").text 
end


#Nokogiri BB100 CSS Selectors
# ------------------------
# rank:  doc.css("div.ye-chart-item__rank").first.text
# title: doc.css("div.ye-chart-item__title").first.text
# artist: doc.css("div.ye-chart-item__artist").first.text
# peak: doc.css("span.decade-end-chart-item__peak-info-rank").first.text
# peak date: doc.css("span.decade-end-chart-item__peak-info-date").first.text
# entire chart: doc.css("div.chart-details__item-list").first.text
# each chart element: doc.css("div.ye-chart-item").first.text
# website "https://www.billboard.com/charts/decade-end/hot-100"



end
scrape = Scrape.new


