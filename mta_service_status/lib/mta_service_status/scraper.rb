require 'open-uri'
require 'nokogiri'
require 'pry'

html = open('alert.mta.info')
doc = Nokogiri::HTML(html)
binding.pry



class MtaServiceStatus::Scraper
  attr_accessor :train, :status, :time_posted, :message

  def initialize(train)
    @train = train
  end

  def status
    @status
  end
end
