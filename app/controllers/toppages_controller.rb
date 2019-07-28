class ToppagesController < ApplicationController
  before_action :require_user_logged_in
  def index
    @aquarias = Aquaria.order(id: :desc).limit(3)
    
    @rankings = Aquaria.all.order("value desc").limit(3)
  end
end
