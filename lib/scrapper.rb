require 'pry'

class Scrape
attr_accessor :artist, :position, :song, :featuring
@@all = []
doc = Nokogiri::HTML(open("https://www.billboard.com/charts/hot-100"))


