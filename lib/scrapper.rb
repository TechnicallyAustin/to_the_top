require 'pry'
require 'nokogiri'
require 'open-uri'
class Scrape
attr_accessor :artist, :position, :song, :featuring
@@all = []
doc = Nokogiri::HTML(open("https://www.billboard.com/charts/hot-100"))
binding.pry
end


