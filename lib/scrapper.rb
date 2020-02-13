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
    @rank = @doc.css("div.ye-chart-item__rank").text
    @title = @doc.css("div.ye-chart-item__title").text
    @artist = @doc.css("div.ye-chart-item__artist").text
    @peak = @doc.css("span.decade-end-chart-item__peak-info-rank").text
    @peak_date = @doc.css("span.decade-end-chart-item__peak-info-date").text
    @entire_chart = @doc.css("div.chart-details__item-list").text
    @charting = @doc.css("article.ye-chart-item").text
end

def rank
    @rank_arr = @rank 
    #retrieves rank for each chart element
end

def title
    @doc.css("div.ye-chart-item__title").each do |titles|
        @titles_arr << titles
    end
    @titles_arr


    #retrieves song titles for each chart element and stores them in an array.
end

def artist 
    @artist_arr = @artist
   
    #retrieves artist name for all chart elements 
end


def peak 
   @peak_arr = @peak 
   #retrieves peak position for all chart elements 
end

def peak_date
    @peak_dates_arr = @peak_date.split(" Peak Date")
    #removes the "Peak Date" string from each element
    #retrieves peak dates for all chart elements 
    #stores each element in an array
    #=> peak_dates.count == 100

    
end

def chart_elements
  @charting 
    #lists each individual chart element
end


def chart
   @entire_chart =  @doc.css("div.chart-details__item-list").text
   # Shows the entire chart printed out
end

end
scrape = Scrape.new
binding.pry
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
#binding.pry