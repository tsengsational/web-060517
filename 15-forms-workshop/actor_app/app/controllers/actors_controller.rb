class ActorsController < ApplicationController
  def new
    # @actor = Actor.new(name: params[:actor][:name])
    # @actor.save
    # <id: 1>
    # render 'actors/new'
  end

  def create
    byebug
    @actor = Actor.create(actor_params)

    redirect_to actor_path(@actor)
  end

  def index
    @actors = Actor.all
  end

  def search
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def find
    if Actor.find_by(name: params[:actor][:name])
      @actors = Actor.all
      @matches = @actors.select {|actor| actor.name == params[:actor][:name] }
      if @matches.size == 1
        @actor = @matches.first
        byebug
        redirect_to actor_path(@actor)
      elsif @matches.size > 1
        redirect_to matches_actors_path
      end
    else
      redirect_to actors_path
    end
  end

  def act
    binding.pry
  end

  def matches

  end

  private

  def actor_params
    params.require(:actor).permit(:name, :hometown)
  end
end
