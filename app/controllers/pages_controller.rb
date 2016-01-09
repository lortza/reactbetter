class PagesController < ApplicationController
  def home
  end

  def about
  end

  def react
    @reaction = Reaction.all.sample
  end #react
end
