class PagesController < ApplicationController
  
  def home
  end #home

  def about
  end

  def react
    @reaction = Reaction.published.sample
  end #react
end
