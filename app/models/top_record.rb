class TopRecord < ActiveRecord::Base
  # initialize new TopRecords with random values
  after_create do |r|
    r.interpret = self.class.get_rnd_title
    r.album = self.class.get_rnd_title 
    r.single = self.class.get_rnd_title
    r.image_url = self.class.get_rnd_image_url
  end
  
  def self.get_rnd_title
    require 'open-uri'
    url = "http://de.wikipedia.org/wiki/Spezial:Zuf%C3%A4llige_Seite"
    doc = Nokogiri::HTML(open(url))
    doc.css('#firstHeading').first.children.to_s
  end

  def self.get_rnd_image_url
    require 'open-uri'
    url = "http://commons.wikimedia.org/wiki/Special:Random/File"
    doc = Nokogiri::HTML(open(url))
    doc.css('#file img').first["src"].to_s
  end
end

