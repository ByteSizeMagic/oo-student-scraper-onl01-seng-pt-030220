require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = index_url
    doc = Nokogiri::HTML(open(html))

    
  end

  def self.scrape_profile_page(profile_url)

  end

end
