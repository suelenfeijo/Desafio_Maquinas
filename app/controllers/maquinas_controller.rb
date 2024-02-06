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
    if @maquina.update(maquina_params)
      redirect_to @maquina
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def edit
  end

  def destroy
  end

  def maquina_params
    params.require(:maquina).permit(:tipo, :nome , :descricao, 
    :meses_garantia, :data_compra, :quebrada)
  end

  def set_params
    @maquina = Maquina.find(params[:id])
  end
end
