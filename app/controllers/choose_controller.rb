class ChooseController < ApplicationController
  before_action :find_session_user

  def choose
    logger.debug 'Grabbing a view to choose the user role'
  end

  def as_student
    logger.debug "Going to set #{@user.first_name} to be a student from now on"
    redirect_to starts_as_a_student_path
  end

  def as_owner
    logger.debug "Going to set #{@user.first_name} to be an owner from now on"
    redirect_to new_owner_path
  end

  private
  def find_session_user
    @user = current_user

    logger.debug "This user #{session[:visited] ? 'has' : 'has not'} visited this site previously"
    logger.debug "We are going to assume that #{@user.first_name} is our current user"
  end
end
