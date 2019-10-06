class ReactionsController < ApplicationController

  before_action :set_background_image
  before_action :require_signin
  before_action :set_reaction, only: [:show, :edit, :update, :destroy]

  def index
    @reactions = Reaction.all.order("name")
  end

  def show
  end

  def new
    @reaction = Reaction.new
  end

  def edit
  end

  def create
    @reaction = Reaction.new(reaction_params)

    respond_to do |format|
      if @reaction.save
        format.html { redirect_to @reaction, notice: @reaction.name + ' was successfully created. Nice work!' }
        format.json { render :show, status: :created, location: @reaction }
      else
        format.html { render :new }
        format.json { render json: @reaction.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @reaction.update(reaction_params)
        format.html { redirect_to reactions_url, notice: @reaction.name + ' was successfully updated.' }
        format.json { render :show, status: :ok, location: @reaction }
      else
        format.html { render :edit }
        format.json { render json: @reaction.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @reaction.destroy
    respond_to do |format|
      format.html { redirect_to reactions_url, notice: 'Poof! ' + @reaction.name + ' was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

    def set_background_image
      @background_image = "grass-1383426-1599x1066.jpg"
    end #set_background_image

    def set_reaction
      #@reaction = Reaction.find(params[:id])
      @reaction = Reaction.find_by!(slug: params[:id])
    end #set_reaction

    def reaction_params
      params.require(:reaction).permit(:name, :explanation, :publish_status, :slug)
    end #reaction_params

end #ReactionsController
