require './modules/date_handler'

class Project

  attr_reader :id,
              :name,
              :start_date,
              :end_date

  def initialize(project_id, name, start_date, end_date)
    @project_id = project_id
    @name = name
    @start_date = Date.new
    @end_date = Date.new
  end

  def id
    @project_id.to_i
  end

end
