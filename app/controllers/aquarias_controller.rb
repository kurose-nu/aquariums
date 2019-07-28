class AquariasController < ApplicationController
  before_action :require_user_logged_in
  before_action :correct_user, only: [:destroy]
  def index
    @aquarias = Aquaria.order(id: :desc).page(params[:page])
  end

  def show
    @aquaria = Aquaria.find(params[:id])
  end

  def new
    @aquaria = Aquaria.new
  end

  def create
    @aquaria = current_user.aquarias.build(aquaria_params)
    if @aquaria.save
      flash[:success] = '水族館の登録に成功しました。'
      redirect_to aquarias_url
    else
      flash.now[:danger] = '水族館の登録に失敗しました。'
      render :new
    end
  end

  def destroy
    @aquaria.destroy
    flash[:success] = "水族館を削除しました。"
    redirect_back(fallback_location: root_path)
  end
  
  private

  def aquaria_params
    params.require(:aquaria).permit(:facility, :value, :content, :image, :latitude, :longitude)
  end
  
  def correct_user
    @aquaria = current_user.aquarias.find_by(id: params[:id])
    unless @aquaria
      redirect_to root_url
    end
  end
end
