require './test/test_helper'
require './lib/project'
require './lib/employee'
require './lib/timesheet'
require './modules/date_handler'
require 'pry'

class TimesheetTest < Minitest::Test

  def test_it_exists
    employee_id = '5'
    project_id = '7'
    date = '2015-01-01'
    minutes = '120'
    timesheet = Timesheet.new(employee_id, project_id, date, minutes)

    assert_instance_of Timesheet, timesheet
  end

  def test_timesheet_has_attributes
    employee_id = '5'
    project_id = '7'
    date = '2015-01-01'
    minutes = '120'
    timesheet = Timesheet.new(employee_id, project_id, date, minutes)

    assert_equal Integer, timesheet.employee_id.class
    assert_equal Integer, timesheet.project_id.class
    assert_instance_of Date, timesheet.date
    assert_equal Integer, timesheet.minutes.class
  end

end
