class ToppagesController < ApplicationController
  def index
    @aquarias = Aquaria.order(id: :desc).limit(3)
    
    @rankings = Aquaria.all.order("value desc").limit(3)
  end
end
