class PagesController < ApplicationController
  def home
  end

  def about
  end

  def react
    @reaction = Reaction.published.sample
  end #react
end
