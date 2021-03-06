class ProjectsController < ApplicationController
  
  # GET /projects
  # GET /projects.json
  # index is typically used when you want to list out a number of items
  def index
    @projects_items = Project.all
    # Project.all calls the model
    # Any instance variables w/in the controller are accessible inside the View
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project_item = Project.find(params[:id])
  end

  # GET /projects/new
  def new
    # the new controller action renders the item, but it does not create a new one nor does it communicate w/ the database
    @project_item = Project.new
  end

  # GET /projects/1/edit
  def edit
    @project_item = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.json
  def create
    @project_item = Project.new(params.require(:project).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @project_item.save
        format.html { redirect_to projects_path, notice: 'Project was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    @project_item = Project.find(params[:id])

    respond_to do |format|
      if @project_item.update(params.require(:project).permit(:title, :subtitle, :body))
        format.html { redirect_to projects_path, notice: 'Project was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project_item = Project.find(params[:id])

    @project_item.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
    end
  end

end
