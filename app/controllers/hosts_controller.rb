class HostsController < ApplicationController
  protect_from_forgery except: :create

  def index
    @random = Host.order("RAND()").limit(1)
  end

  def new
    @hosts = Host.new
  end

  def create
    @hosts = Host.new(host_params)
    if @hosts.save
      redirect_to root_path
    else
      render new_host_path
    end
  end

  def show
    @host = Host.find(params[:id])
  end

  private
  def host_params
    params.require(:host).permit(
      :title,
      :food1,
      :food2,
      :food3,
      :subfood1, 
      :subfood2, 
      :subfood3, 
      :seasoning1, 
      :seasoning2, 
      :seasoning3, 
      :seasoning4, 
      :seasoning5, 
      :seasoning6, 
      :image,
      :time
    )
  end
end
