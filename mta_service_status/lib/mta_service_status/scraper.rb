
require 'nokogiri'
require 'open-uri'
require 'pry'

def MtaServiceStatus
  
end




class Scraper
  attr_accessor :train, :status, :time_posted, :message

  def initialize(train)
    @train = train
  end

  def self.scrape_index
    html = open('http://service.mta.info/ServiceStatus/status.html')
    doc = Nokogiri::HTML(html)
    binding.pry
    status_array = doc.css("td.subwayCategory").collect {|train| train.text}
  end
  
  def self.scrape_train(train)
    html = open('http://alert.mta.info/status/subway/#{train}/25341439')
    doc = Nokogiri::HTML(html)
    @status = doc.css("span.TitleDelay").text
    
  end
end
