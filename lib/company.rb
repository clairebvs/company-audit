 require "csv"

class Company
  attr_reader :employees,
              :projects,
              :timesheets

  def initialize
    @employees = []
    @projects = []
    @timesheets = []
  end

  def load_employees
    contents = File.read "employees.csv"
    @employees << contents
  end

end

company = Company.new
puts company.load_employees
