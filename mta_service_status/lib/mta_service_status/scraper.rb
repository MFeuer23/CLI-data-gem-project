require 'open-uri'
require 'nokogiri'



class MtaServiceStatus::Scraper
  attr_accessor :train, :status, :time_posted, :message

  def initialize(train)
    @train = train
  end

  def status
    @status =
  end
end
