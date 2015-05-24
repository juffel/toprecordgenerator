class HomeController < ApplicationController
  require 'open-uri'

  def index
    @interpret = get_rnd_title
    @album = get_rnd_title 
    @single = get_rnd_title
    @cover_url = get_rnd_image_url
  end

  private
  def get_rnd_title
    url = "http://de.wikipedia.org/wiki/Spezial:Zuf%C3%A4llige_Seite"
    doc = Nokogiri::HTML(open(url))
    doc.css('#firstHeading').first.children
  end

  def get_rnd_image_url
    url = "https://commons.wikimedia.org/wiki/Special:Random/File"
    doc = Nokogiri::HTML(open(url))
    doc.css('#file img').first["src"]
  end
end
