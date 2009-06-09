class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    if params[:id] =~ /\D/
      @project = Project.find_by_slug(params[:id])
      raise ActiveRecord::RecordNotFound, "Couldn't find Project with slug=#{params[:id]}" unless @project
    else
      @project = Project.find(params[:id])
    end
  end
end
