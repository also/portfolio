class PagesController < ApplicationController
  def show
    @page = Page.find_by_slug(params[:slug])
    raise ActiveRecord::RecordNotFound, "Couldn't find Page with slug=#{params[:slug]}" unless @project
  end
end
