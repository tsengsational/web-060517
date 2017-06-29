class Character < ActiveRecord::Base
  belongs_to :tv_show
  belongs_to :actor

  def actor_name=(name)
    actor = Actor.find_or_create_by(name: name)
     self.actor = actor
  end

  def show_name=(name)
    # 1. if there is no tv show, create one
        # but if there is a tv show, retrieve it
        show = TvShow.find_or_create_by(name: name)
      # 2. 
      self.tv_show = show
  end
end