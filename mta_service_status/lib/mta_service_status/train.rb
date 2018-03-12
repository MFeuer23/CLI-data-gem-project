
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
  
  def self.find_details(input)
    Scrape.detail_scrape
    Train.all.detect do |train| 
      if train.name.include?(input) && train.status == "Good Service"
        puts "#{train.status}"
      elsif train.name.include?(input) && train.status != "Good Service"
        puts "#{train.detail} - #{train.message}"
      end
    end
  end
end
