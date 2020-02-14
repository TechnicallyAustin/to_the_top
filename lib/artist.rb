require_relative 'lib/scrapper.rb'
require_relative '../lib/module.rb'
require 'pry'
require 'nokogiri'
require 'open-uri'

extend AllClasses::ClassMethods
class Artist
attr_accessor :name, :song, :peak, :peak_date 
def initialize(name)
@name = name 
@@all << self
end


end
