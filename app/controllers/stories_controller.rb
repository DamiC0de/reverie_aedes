class StoriesController < ApplicationController
    before_action :authenticate_user!
  
    def new
      @story = Story.new
    end
  
    def create
        @story = current_user.stories.new(story_params)
        @story.content = @story.generate_content
        if @story.save
          redirect_to @story
        else
          render 'new'
        end
      end
      
  
    def show
      @story = Story.find(params[:id])
      @openai_input = @story.generate_openai_input
    end
  
    private
  
    def story_params
      params.require(:story).permit(:theme, :age, :name, :secondary_character, :fav_object)
    end

    
  end
  