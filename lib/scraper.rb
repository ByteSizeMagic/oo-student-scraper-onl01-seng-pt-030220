require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    student_page = doc.css(".student-card a")
    students = []

    student_page.each do |student|
      students << {
        name: student.css(".card-text-container h4").text,
        location: student.css(".card-text-container p").text,
        profile_url: student.attr('href')
      }
    end
    students

  end

  def self.scrape_profile_page(profile_url)

  end

end
