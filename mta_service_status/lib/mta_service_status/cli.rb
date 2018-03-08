class MtaServiceStatus::Cli

  def call
    menu
    goodbye
  end

  def menu

      puts "To view the current status of MTA service, enter status"
      puts "To view the status of one train, enter train line"
      input = nil
    while input != "exit"
      puts "enter status, train line, or exit"
      input = gets.chomp
      case input
      when"status"
          puts "current train status!"
          Train.status_scrape
          Train.status
          #print status of all trains
      when "1", "2", "3"
          puts "good! #{input}"
          #Good to go, or more specific delay detail
      when "4", "5", "6"
          puts "good! #{input}"
          #Good to go, or more specific delay detail
      when "7"
          puts "good! #{input}"
          #Good to go, or more specific delay detail
      when "a", "c", "e"
          puts "good! #{input}"
          #Good to go, or more specific delay detail
      when "b", "d", "f", "m"
          puts "good! #{input}"
          #Good to go, or more specific delay detail
      when "g"
          puts "good! #{input}"
          #Good to go, or more specific delay detail
      when "j", "z"
          puts "good! #{input}"
          #Good to go, or more specific delay detail
      when "l"
          puts "good! #{input}"
          #Good to go, or more specific delay detail
      when "n", "q", "r", "w"
          puts "good! #{input}"
          #Good to go, or more specific delay detail
      when "s"
          puts "good! #{input}"
          #Good to go, or more specific delay detail
      when "exit"
          nil
      else
          puts "please enter train line, status, or exit"
      end
    end
  end

  def goodbye
    puts "Happy Travels! Know before you go :)"
  end

end
