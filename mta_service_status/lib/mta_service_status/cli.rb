class MtaServiceStatus::Cli

  def call
    puts "Welcome!"
    puts "To view the current status of MTA service, enter status"
    puts "To view the status of one train, enter train line"
    input = gets.chomp.downcase
    if input == "status"
      puts "current train status!"
      #scrape mta service advisory website
      #print status of all trains
    elsif input == "1" || input == "2" || input == "3"
      puts "good! #{input}"
      #Good to go, or more specific delay detail
    elsif input == "4" || input == "5" || input == "6"
      puts "good! #{input}"
      #Good to go, or more specific delay detail
    elsif input == "7"
      puts "good! #{input}"
      #Good to go, or more specific delay detail
    elsif input == "a" || input == "c" || input == "e"
      puts "good! #{input}"
      #Good to go, or more specific delay detail
    elsif input == "b" || input == "d" || input == "f" || input == "m"
      puts "good! #{input}"
      #Good to go, or more specific delay detail
    elsif input == "g"
      puts "good! #{input}"
      #Good to go, or more specific delay detail
    elsif input == "j" || input == "z"
      puts "good! #{input}"
      #Good to go, or more specific delay detail
    elsif input == "l"
      puts "good! #{input}"
      #Good to go, or more specific delay detail
    elsif input == "n" || input == "q" || input == "r" || input == "w"
      puts "good! #{input}"
      #Good to go, or more specific delay detail
    elsif input == "s"
      puts "good! #{input}"
      #Good to go, or more specific delay detail
    elsif input == "exit"
      nil
    else
      puts "please enter train line, status, or exit"
    end
  end

    #123
    #456
    #7
    #ACE
    #BDFM
    #G
    #JZ
    #L
    #NQRW
    #S
end
