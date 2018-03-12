
class Train
  include Scraper
  attr_accessor :name, :status, :detail, :message
  @@all = []

  def initialize(name, status)
    @name = name
    @status = status
    @@all << self
  end

  def self.all
    @@all
  end

  def self.status
    Scrape.status_scrape
    @@all.each {|train| puts "  #{train.name.upcase} - #{train.status}"}
  end
end
