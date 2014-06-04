require_relative "employee"
 
class Marketer < Employee
  def initialize(first_name, last_name, gender, email, twitter_handle)
    @twitter_handle = twitter_handle
    super(first_name, last_name, gender, email)
  end

  def details
    super.gsub(")", ", #{@twitter_handle})")
  end

  def tweet_about(employee)
    puts "Middlesex High School is proud to have #{salutation} #{employee.first_name} #{employee.last_name} join our company as a #{position(employee)}."
  end

  private

  def position(employee)
    if employee.is_a?(Manager)
      employee.title
    else
      employee.class
    end
  end
end

