class ConcretesController < ApplicationController
  def new
    @concrete = Concrete.new
  end

  def create
    @concrete = Concrete.new(concrete_params)
    @concrete.save
    render nothing: true
  end

  def edit
    @concrete = Concrete.find(params[:id])
  end

  def update
    @concrete = Concrete.new(concrete_params)
    @concrete.save
    render nothing: true
  end

  def concrete_params
    params.require(:concrete).permit(:mix_type, :psi, :color, :cost_per_yard)
  end

end
