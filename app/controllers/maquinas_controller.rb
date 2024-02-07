class MaquinasController < ApplicationController
  before_action :authenticate_user!, except: %i[acesso]
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
    @maquina = current_user.maquinas.new
  end

  def create
    @maquina = current_user.maquinas.new(maquina_params)
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
      time_diff = ((Time.now - @maquina.created_at) / 60).round
    flash[:alert] = "Máquina não pode ser exluída antes de 30 minutos de criação. Faltam #{30 - time_diff} minutos para ser possível excluir."
    else
      @maquina.destroy
      flash[:notice] = "Maquina deletada com sucesso."
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