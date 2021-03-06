class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :loadCourse


  def loadCourse
    @courses = Course.all
    @grades = Grade.all
    @places = Place.all
    @chapters = Chapter.all
    @sections = Section.all
  end
end
