
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
    doc = Nokogiri::HTML(open('http://service.mta.info/ServiceStatus/status.html'))

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
          doc = Nokogiri::HTML(open("http://alert.mta.info/status/subway/#{train.name}/"))
          train.parse(doc, train)
      end
    end
  end

end
