class Locacao < ApplicationRecord
  belongs_to :cliente
  belongs_to :veiculo
  belongs_to :usuario
end
