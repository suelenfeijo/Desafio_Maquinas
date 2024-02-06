class Maquina < ApplicationRecord
    
  #validates :nome, presence: true, lenght: { in: 2..80 }
  #validates :descricao, presence true, lenght: { maximum: 1000 }
  #garantindo que os meses de garantia sejam maior que 0 e inteiros.
  #validates :meses_garantia, presence true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  #validação que certifica a validade e assegura a data da compra no passado ou no presente
  #validates :data_compra, presence true, date: { on_or_before: Proc.new { Date.today } }
end
