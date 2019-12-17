class ProjectsController < ApplicationController
  
  # index is typically used when you want to list out a number of items
  def index
    @projects_items = Project.all
    # Project.all calls the model
    # Any instance variables w/in the controller are accessible inside the View
  end
end
