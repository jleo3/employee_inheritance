require_relative "employee"

class Developer < Employee
  def initialize(first_name, last_name, gender, email, github)
    @github = github
    super(first_name, last_name, gender, email)
  end
end

