
class Train
  attr_accessor :name, :status, :time_posted, :message
  @@all = {}#train => status

  def initialize(name)
    @name = name
    @@all << self
  end

  def all
    @@all
  end

  def status(train)
    #@ status = Scraper.new.status
  end
  
  def time_posted(train)
    #@time posted = Scraper.
  end
end
