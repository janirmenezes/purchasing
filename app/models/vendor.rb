class Vendor < ActiveRecord::Base
  attr_accessible :cnpj, :fornecedor, :telefone, :tipo
end
