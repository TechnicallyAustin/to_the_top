require 'pry'
require 'nokogiri'
require 'open-uri'

class Scrape
# extend
# include  
attr_accessor :artist, :position, :song, :year, :chart, :title, :peak_date, :peak 
@@all = []
@@rank = doc.css("div.ye-chart-item__rank").text
@@title = doc.css("div.ye-chart-item__title").text
@@artist = doc.css("div.ye-chart-item__artist").text
@@peak = doc.css("span.decade-end-chart-item__peak-info-rank").text
@@peak_date = doc.css("span.decade-end-chart-item__peak-info-date").text
@@entire_chart = doc.css("div.chart-details__item-list").text
@@chart_elements = doc.css("article.ye-chart-item").text
def initialize
@doc = Nokogiri::HTML(open("https://www.billboard.com/charts/decade-end/hot-100"))

end

def rank
    @rank = []
    rank = @doc.css("div.ye-chart-item__rank").text
    #retrieves rank for each chart element
end

def title
    @titles = []
    titles = @doc.css("div.ye-chart-item__title").text
    #retrieves song titles for each chart element
end

def artist 
    artists = @doc.css("div.ye-chart-item__artist").text
    #retrieves artist name for all chart elements 
end


def peak 
   peaks =  @doc.css("span.decade-end-chart-item__peak-info-rank").text
   #retrieves peak position for all chart elements 
end

def peak_date
    dates = @doc.css("span.decade-end-chart-item__peak-info-date").text
    #retrieves peak dates for all chart elements 
end

def chart_elements
    chart_elements = @doc.css("article.ye-chart-item").first.text
    #lists each individual chart element

def chart
   entire_chart =  @doc.css("div.chart-details__item-list").text
   # Shows the entire chart printed out
end


#Nokogiri BB100 CSS Selectors
# ------------------------
# rank:  doc.css("div.ye-chart-item__rank").first.text
# title: doc.css("div.ye-chart-item__title").first.text
# artist: doc.css("div.ye-chart-item__artist").first.text
# peak: doc.css("span.decade-end-chart-item__peak-info-rank").first.text
# peak date: doc.css("span.decade-end-chart-item__peak-info-date").first.text
# entire chart: doc.css("div.chart-details__item-list").first.text
# chart element: doc.css("article.ye-chart-item").first.text
# website "https://www.billboard.com/charts/decade-end/hot-100"



# Depending on which class this goes in associations will need to be added.

# chart element each do |song_card|
#     @artist = specifiy the artist using the CSS selector
#     @peak = specifiy the peak using the CSS selector
#     @peak_date = specifiy the peak_date using the CSS selector
#     @title = specifiy the title using the CSS selector
#     @rank = specifiy the rank using the CSS selector




end
scrape = Scrape.new
binding.pry