class MapsController < InheritedResources::Base
  def create
    if Map.create(map_params)
      flash[:notice] = "Create seccessful!"
      redirect_to root_path
    else
      render :action => "new"
    end
  end

  def update
    @map = Map.find(params[:id])
    if @map.update(map_params)
      flash[:notice] = "Update seccessful!"
      redirect_to root_path
    else
      render :action => "edit"
    end
  end

  private

  def map_params
    params.require(:map).permit( :expense, :starting_point, :end_point, :description)
  end
end
