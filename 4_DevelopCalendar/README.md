# #4: Development Calendar
##### The Upcast development team are required to have a mid month meeting in order to discuss the ongoing improvements and new features to the code base. This meeting is planned for the 14th of every month. Testing is also done on a monthly basis and should be done on the last day of the month. If the 14th falls on a Saturday or Sunday then the mid month meeting should be arranged for the following Monday. If the testing day falls on a Friday, Saturday or Sunday then testing should be set for the previous Thursday. With this in mind, design a command line script that will write a CSV to file outputting the columns 'Month', 'Mid Month Meeting Date' and 'End of Month Testing Date' for the next 6 months.

### Usage

    ruby devcalendar.rb                   # Export next 6 months to 'devcalendar.csv'
    ruby devcalendar.rb -m 15 -f new.csv  # Export next 15 months to 'new.csv'