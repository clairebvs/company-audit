require './test/test_helper'
require './lib/employee'
require './modules/date_handler'
require 'pry'

class EmployeeTest < Minitest::Test
  def test_instantiation
    employee_id = '5'
    name = 'Sally Jackson'
    role = 'Engineer'
    start_date = '2015-01-01'
    end_date = '2018-01-01'
    employee = Employee.new(employee_id, name, role, start_date, end_date)

    assert_instance_of Employee, employee
  end

  def test_attributes
    employee_id = '5'
    name = 'Sally Jackson'
    role = 'Engineer'
    start_date = '2015-01-01'
    end_date = '2018-01-01'
    date = Date.new(2018, 1, 25) # January 25, 2018
    dh = DateHandler::DHDate.new(date)
    employee = Employee.new(employee_id, name, role, start_date, end_date)
    # binding.pry

    assert_equal Integer, employee.id.class
    assert_equal "Sally Jackson", employee.name
    assert_equal "Engineer", employee.role
    assert_instance_of Date, employee.start_date
    assert_instance_of Date, employee.end_date

  end
end
