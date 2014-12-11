class StudentsController < ApplicationController
  def new; end
  def choose
    unless current_user.has_role?
      current_user.user = Student.new
    end
  end
end
