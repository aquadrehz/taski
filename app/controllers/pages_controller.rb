class PagesController < ApplicationController
  def contact
  end

  def about
    @title = "AquaDrehz First Page"
  end

  def home
    @projects = Project.all.limit(10)
  end

  def error

  end
end
