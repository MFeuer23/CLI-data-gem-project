
require 'nokogiri'
require 'open-uri'
require 'pry'






class MtaServiceStatus::Scraper
  attr_accessor :train, :status, :time_posted, :message

  def initialize(train)
    @train = train
  end

  def status(train)
    html = open('http://alert.mta.info/status/subway/#{train}/25341439')
    doc = Nokogiri::HTML(html)
    @status = doc.css("span.TitleDelay").text
    binding.pry
  end
end
