require 'pry'
require 'nokogiri'
require 'open-uri'

class Scrape
# extend
# include  
attr_accessor :artist, :position, :song, :year, :chart, :title, :peak_date, :peak 
@@all = []
@@doc = Nokogiri::HTML(open("https://www.billboard.com/charts/decade-end/hot-100"))
def initialize
    @rank = @@doc.css("div.ye-chart-item__rank").text
    @title = @@doc.css("div.ye-chart-item__title").text
    @artist = @@doc.css("div.ye-chart-item__artist").text
    @peak = @@doc.css("span.decade-end-chart-item__peak-info-rank").text
    @peak_date = @@doc.css("span.decade-end-chart-item__peak-info-date").text
    @entire_chart = @@doc.css("div.chart-details__item-list").text
    @charting = @@doc.css("article.ye-chart-item").text
end

def rank
    ### Done ### 
    @rank_arr = @rank.split("\n").delete_if { |i| i == "" || i == " "}
    @rank_arr 
    #retrieves rank for each chart element
    binding.pry 
end

def title
    ### Done ###
    @title_arr = @title.split("\n").delete_if { |i| i == "" || i == " "}
    @title_arr
    binding.pry 
    #retrieves song titles for each chart element and stores them in an array.
end

def artist 
    ### Done ###
    @artist_arr = @artist
    @split_artist = @artist_arr.split("\n")
    @final_arr = @split_artist.delete_if {|i| i == "" || i == " "}
    binding.pry 

   
    #retrieves artist name for all chart elements 
    # returns the list of artist formatted in an array.
end


def peak 
    ### Done, *remove quotes from array elements ###
   @peak_arr = @peak.split(" Peak  Position")
   @peak_arr 
   #retrieves peak position for all chart elements 
   binding.pry 
end

def peak_date
    ### DOne * remove quotes from array elements ###
    @peak_dates_arr = @peak_date.split(" Peak Date")
    #removes the "Peak Date" string from each element
    #retrieves peak dates for all chart elements 
    #stores each element in an array
    #=> peak_dates.count == 100
    binding.pry

    
end

def chart_elements
  @charting_arr = @@doc.css("article.ye-chart-item").text.split("\n")
  @charting_arr.delete_if { |i| i == "" || i == " "}
    #lists each individual chart element
    new_arr = @charting_arr.each_slice(3) {|i| p i}
    ## ^ This list each chat item as a single array element. ##
    # new_arr[0] == [Rank, Title, artist]
    # new_arr[1] == [peak position, peak date, ]
    binding.pry 
end


def chart
    ##### NOT DONE ####
   @entire_chart =  @charting 
   # Shows the entire chart printed out
   # Build this method using the other methods you created. you need to format this chart.
   binding.pry 
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