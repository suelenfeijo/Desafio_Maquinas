class MaquinasController < ApplicationController


  def index
    @maquinas = Maquina.all
  end

  def show;end

  def create
    @maquina = Maquina.new(maquina_params)
    if @maquina.save
      redirect to maquinas_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @maquina = Maquina.new
  end

  def update

  end

  def edit
  end

  def destroy
  end

  def maquina_params
  end

  def set_params
  end
end
