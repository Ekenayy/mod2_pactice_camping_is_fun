class ActivitiesController < ApplicationController
  
  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.all.find(params[:id])
  end

end
