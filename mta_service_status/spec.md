# Specifications for the CLI Assessment

Specs:
- [ X ] Have a CLI for interfacing with the application
      + You can run ./bin/mta-service-status in your terminal to run the CLI. The CLI welcomes you to the app, gives you a menu of the different commands you can enter, checks for valid input, shows you the MTA general service status, or a detailed status for each line, and says goodbye when you exit.
- [ X ] Pull data from an external source
      + This gem scrapes data from several different MTA websites depending on the status of different train lines.
- [ X ] Implement both list and detail views
      + You can enter "status" to get a general status of all subway lines, or enter a particular subway line to get a more detailed status output.
