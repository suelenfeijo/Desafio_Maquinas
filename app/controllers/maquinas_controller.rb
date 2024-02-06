class MaquinasController < ApplicationController
  before_action :set_params, only: %i[ show edit update destroy set_quebrada ]
  before_action :set_quebrada, only: [:index, :show]

  def index
    if params[:search].present?
      search_query = "%#{params[:search]}%"
      @maquinas = Maquina.where('nome LIKE :query OR id LIKE :query', query: search_query)
      if @maquinas.empty?
        @search_message = "ID ou nome da máquina não encontrado."
      end
    else
      @maquinas = Maquina.all
    end
  end
  
  def show
  end

  
  def new
    @maquina = Maquina.new
  end

  def create
    @maquina = Maquina.new(maquina_params)
    if @maquina.save
      redirect_to maquinas_url
    else
      render :new, status: :unprocessable_entity
    end
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
    if @maquina.created_at > 30.minutes.ago
      flash[:error] = "A máquina não pode ser removida porque foi criada há menos de 30 minutos."
    else
      @maquina.destroy
      flash[:notice] = "A máquina foi excluída."
    end
    redirect_to maquinas_path
  end

  def maquina_params
    params.require(:maquina).permit(:tipo, :nome , :descricao, 
    :meses_garantia, :data_compra, :quebrada)
  end

  def set_params
    @maquina = Maquina.find(params[:id])
  end

  def set_quebrada
    @quebrada = @maquina&.quebrada? ? 'quebrada' : 'não quebrada'
  end
end