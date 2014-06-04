require_relative "employee"

class Manager < Employee
  attr_accessor :title

  def initialize(first_name, last_name, gender, email, title)
    @title = title
    super(first_name, last_name, gender, email)
  end

  def details
    super.gsub(@last_name, "#{@last_name}, #{@title}")
  end
end

