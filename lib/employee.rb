class Employee
  attr_accessor :first_name, :last_name, :gender, :email
  def initialize(first_name, last_name, gender, email)
    @first_name = first_name
    @last_name = last_name
    @gender = gender
    @email = email
  end

  def salutation
    if @gender == "F"
      "Ms."
    else
      "Mr."
    end
  end

  def details
    "#{salutation} #{@first_name} #{@last_name} (#{@email})"
  end
end

