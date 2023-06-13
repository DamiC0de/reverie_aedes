class StoriesController < ApplicationController
    before_action :authenticate_user!
  
    def new
      @story = Story.new
    end
  
    def create
      @story = Story.new(story_params)
      if @story.save
        redirect_to @story
      else
        render 'new'
      end
    end
  
    def show
      @story = Story.find(params[:id])
    end
  
    private
  
    def story_params
      params.require(:story).permit(:theme, :age, :name, :secondary_character, :fav_object)
    end
  end
  