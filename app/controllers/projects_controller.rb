class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
  end

  def add
    @project = Project.find(params[:id])
  end
end
