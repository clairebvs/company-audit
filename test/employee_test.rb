require './test/test_helper'
require './lib/employee'
require 'date'
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
    date = Date.new
    employee = Employee.new(employee_id, name, role, start_date, end_date)
    # binding.pry

    assert_equal Integer, employee.id.class
    assert_equal "Sally Jackson", employee.name
    assert_equal "Engineer", employee.role
    assert_equal Date, employee.start_date
# employee.start_date
# => #<Date: 2015-01-01 ((2457024j,0s,0n),+0s,2299161j)>
# employee.end_date
  end
end
