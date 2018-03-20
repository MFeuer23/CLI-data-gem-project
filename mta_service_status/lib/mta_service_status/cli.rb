class MtaServiceStatus::Cli

  def call
    puts "Welcome!"
    menu
    goodbye
  end

  def menu

      puts "To view the current, general status of MTA service, enter status"
      puts "To view a more detailed status of one train, enter train line"
      input = nil
    while input != "EXIT"
      puts "**Please enter status, train line, or exit"
      input = gets.chomp.upcase
      case input
      when"STATUS"
          Train.status
      when "1", "2", "3", "4", "5", "6", "7", "A", "C", "E", "B", "D", "F", "M", "G", "J", "Z", "L", "N", "Q", "R", "W", "S", "SIR"
          Train.find_details(input)
      when "EXIT"
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
