class HostsController < ApplicationController
  protect_from_forgery except: :create

  def index
    @hosts = Host.all
  end

  def new
    @hosts = Host.new
  end

  def create
    @host = Host.new(host_params)
    if @host.save
      redirect_to root_path
    else
      render new_host_path
    end
  end


  private
  def host_params
    params.require(:host).permit(
      :title,
      :food1,
      :food2,
      :food3,
      :time
    )
  end
end
