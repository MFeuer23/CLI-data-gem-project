
class Train
  include Scraper
  attr_accessor :name, :status, :detail, :message
  @@all = []
  @@train_name_array = ["123", "456", "7", "ACE", "BDFM", "G", "JZ", "L", "NQRW", "S", "SIR"]
  
  def initialize(name, status)
    @name = name
    @status = status
    @@all << self
  end

  def self.all
    @@all
  end

  def self.status_scrape
    self.all.clear
    html = open('http://service.mta.info/ServiceStatus/status.html')
    doc = Nokogiri::HTML(html)
    
    status_array = doc.css("td.subwayCategory").collect {|train| train.text}
    @@train_name_array.each_with_index do |name, index|
      self.new(name, status_array[index])
    end
  end
    
  def self.status
    status_scrape
    @@all.each {|train| puts "  #{train.name.upcase} - #{train.status}"}
  end
  
  def self.detail_scrape
    status_scrape
    
    @@all.each do |train|
      if train.status == "Good Service"
        train.detail = ""
        train.message = ""
      else 
        if train.name == "123"
          html = open('http://alert.mta.info/status/subway/123/')
          doc = Nokogiri::HTML(html)
          train.parse(doc, train)
        elsif train.name == "456"
          html = open('http://alert.mta.info/status/subway/456/')
          doc = Nokogiri::HTML(html)
          train.parse(doc, train)
        elsif train.name == "7"
          html = open('http://alert.mta.info/status/subway/7/')
          doc = Nokogiri::HTML(html)
          train.parse(doc, train)
        elsif train.name == "ACE"
          html = open('http://alert.mta.info/status/subway/ACE/')
          doc = Nokogiri::HTML(html)
          train.parse(doc, train)
        elsif train.name == "BDFM"
          html = open('http://alert.mta.info/status/subway/BDFM/')
          doc = Nokogiri::HTML(html)
          train.parse(doc, train)
        elsif train.name == "G"
          html = open('http://alert.mta.info/status/subway/G/')
          doc = Nokogiri::HTML(html)
          train.parse(doc, train)
        elsif train.name == "JZ"
          html = open('http://alert.mta.info/status/subway/JZ/')
          doc = Nokogiri::HTML(html)
          train.parse(doc, train)
        elsif train.name == "L"
          html = open('http://alert.mta.info/status/subway/L/')
          doc = Nokogiri::HTML(html)
          train.parse(doc, train)
        elsif train.name == "NQRW"
          html = open('http://alert.mta.info/status/subway/NQRW/')
          doc = Nokogiri::HTML(html)
          train.parse(doc, train)
        elsif train.name == "S"
          html = open('http://alert.mta.info/status/subway/S/')
          doc = Nokogiri::HTML(html)
          train.parse(doc, train)
        elsif train.name == "SIR"
          html = open('http://alert.mta.info/status/subway/SIR/')
          doc = Nokogiri::HTML(html)
          train.parse(doc, train)
        end
      end
    end
  end

end
