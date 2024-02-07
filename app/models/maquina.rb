class Maquina < ApplicationRecord
    require 'Date'

    belongs_to :user
  validates :nome, presence: { allow_blank: false, message: 'nome não pode ser nulo' }, length: { minimum: 2 ,  maximum: 80, message: 'deve ter ter entre 2 a 80 caracters'}

  validates :descricao, presence: { allow_blank: false, message: 'descrição não pode ser nulo' }, length: { maximum: 1000 , message: 'Tamanho máximo de 1000 caracters'}


  #garantindo que os meses de garantia sejam maior que 0 e inteiros.
  validates :meses_garantia, presence:  { allow_blank: false, message: ' meses de garantia não pode ser nulo' }, numericality: { only_integer: true, greater_than_or_equal_to: 0, message: 'meses de garantia deve ser um inteiro positivo' }
  validates :data_compra, presence: { allow_blank: false, message: 'data de compra não pode ser nula!' }
  #validação que certifica a validade e assegura a data da compra no passado ou no presente
  validate :data_compra_valida

  def data_compra_valida
    if data_compra.present? && data_compra > Date.today
      errors.add(:data_compra, "data de compra não pode ser no futuro")
    end
  end

  def created_at_sao_paulo
    created_at.in_time_zone('America/Sao_Paulo')
  end

end
