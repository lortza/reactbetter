class PagesController < ApplicationController

  HOME_IMAGES = ["background-906143_1920.jpg", "citrus-991090_1920.jpg", "lemon-933210_1920.jpg"]

  REACT_IMAGES = ["alaska-139934_1920.jpg", "alaska-810433_1920.jpg", "alps-757731_1280.jpg", "antelope-canyon-1128815_1920.jpg", "autumn-219972_1280.jpg", "blue-993517_1920.jpg", "boardwalk-142632_1920.jpg", "daisies-388947_1920.jpg", "field-644440_1920.jpg", "forests-231066_1920.jpg", "glen-canyon-113688_1280.jpg", "green-1072828_1920.jpg", "heart-rock-1111680_1920.jpg", "lake-865155_1920.jpg", "landscape-937508_1920.jpg", "monument-valley-53637_1280.jpg", "road-815297_1920.jpg", "road-1072823_1920.jpg", "stone-arch-828730_1280.jpg", "sunflower-1127174_1920.jpg", "tree-247122_1280.jpg", "utah-440520_1280.jpg"]
  
  def home
    @background_image = HOME_IMAGES.sample
    @randitem = Reaction.published.sample
  end #home

  def about
    @background_image = HOME_IMAGES.sample
  end

  def react
    @reaction = Reaction.published.sample
    @background_image = REACT_IMAGES.sample
  end #react
end #PagesController
