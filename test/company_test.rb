require './test/test_helper'
require './lib/project'
require './lib/employee'
require './lib/timesheet'
require './lib/company'
require './modules/date_handler'
# require './data/employees.csv'
require 'pry'

class CompanyTest < Minitest::Test
  def test_it_exists
    company = Company.new
    assert_instance_of Company, company
  end

  def test_company_has_employees_projects_and_timesheets
    company = Company.new

    assert_equal [], company.employees
    assert_equal [], company.projects
    assert_equal [], company.timesheets
  end

  def test_company_has_new_employees
    filename = employees.csv
    company = Company.new
    expected = {}
    assert_equal expected, company.load_employees(filename)
  end

end
