class PagesController < ApplicationController
  def home
  end
  def profile
    @stories = current_user.stories
  end
end
