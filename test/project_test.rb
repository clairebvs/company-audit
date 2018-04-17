require './test/test_helper'
require './lib/project'
require './modules/date_handler'
require 'pry'

class ProjectTest < Minitest::Test

  def test_it_exists
    project_id = '123'
    name = 'Widget Maker'
    start_date = '2015-01-01'
    end_date = '2018-01-01'
    project = Project.new('123', 'Widget Maker', '2015-01-01', '2018-01-01')

    assert_instance_of Project, project
  end

  def test_project_has_attributes
    project_id = '123'
    name = 'Widget Maker'
    start_date = '2015-01-01'
    end_date = '2018-01-01'
    project = Project.new('123', 'Widget Maker', '2015-01-01', '2018-01-01')

    assert_equal Integer, project.id.class
    assert_equal "Widget Maker", project.name
    assert_instance_of Date, project.start_date
    assert_instance_of Date, project.end_date
  end

# project.start_date
# => #<Date: 2015-01-01 ((2457024j,0s,0n),+0s,2299161j)>
# project.end_date
# => #<Date: 2018-01-01 ((2458120j,0s,0n),+0s,2299161j)>


end
