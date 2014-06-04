require_relative 'lib/employee'
require_relative 'lib/developer'
require_relative 'lib/manager'
require_relative 'lib/marketer'

# Your job is to build an Employee base class (super class) and 
# three subclasses - Developer, Manager, and Marketer. Consider adding 
# attributes and methods common to all employees to the Employee 
# class and using inheritance to add attributes and methods to the 
# subclasses.
#
# All employees have:
# - first name
# - last name
# - gender
# - email
#
# All employees have a `details` method that will print all of their 
# attributes to the console. For example:
# "Ms. Roberta Sparrow (grandma.death@gmail.com)"
#
# The Developer has an extra attribute:
# - github account
# 
# The Manager has an extra attribute:
# - title
# You must include the Manager's title in their `details` method
#
# The Marketer has an extra attribute:
# - twitter handle
# The Marketer also has an extra method called `tweet_about` which
# takes an employee and "tweets" their details and a welcome message
# (but for our purposes they can just use `puts`). For example:
#   marketer.tweet_about(roberta_sparrow)
#   => "We're proud to have Ms. Roberta Sparrow join our company"
#
# Finally, use this main.rb file to do the following:
# 1. Create a new Developer, Manager, and Marketer
# 2. Call the `details` method on each so that we see the employee
#    details on the console
# 3. For each employee, call the Marketer's `tweet_about` method.
#
developer = Developer.new("Roberta", "Sparrow", "F", "grandma.death@gmail.com", "gdeath")
puts developer.details

manager = Manager.new("Kitty", "Farmer", "F", "sparklemotion@gmail.com", "Dance Coach")
puts manager.details

marketer = Marketer.new("Jim", "Cunningham", "M", "fear_and_love@gmail.com", "@fear_and_love")
puts marketer.details

marketer.tweet_about(developer)
marketer.tweet_about(marketer)
marketer.tweet_about(manager)
exit
# The final output should look similar to this:
#
# Ms. Roberta Sparrow (grandma.death@gmail.com)
# Ms. Kitty Farmer, Dance Coach (sparklemotion@gmail.com)
# Mr. Jim Cunningham (fear_and_love@gmail.com, @fear_vs_love)
#  
# Middlesex High School is proud to have Ms. Roberta Sparrow join our company as a developer.
# Middlesex High School is proud to have Mr. Jim Cunningham join our company as a marketer.
# Middlesex High School is proud to have Ms. Kitty Farmer join our company as a dance coach.
#

  def find_position(employee)
    if employee.is_a?(Developer)
      "developer"
    elsif employee.is_a?(Marketer)
      "marketer"
    elsif employee.is_a?(Manager)
      employee.title
    end
  end

  def tweet_about(employee)
    puts "Middlesex High School is proud to have #{salutation} #{employee.first_name} #{employee.last_name} join our company as a #{find_position(employee)}."
  end
