
class Train
  attr_accessor :name, :status, :time_posted, :message
  @@general_status = {#train => status}

  def initialize(name)
    @name = name
    @@general_status << self
  end

  def general_status
    @@general_status
  end

  def status(train)
    #@ status = Scraper.new.status
end
