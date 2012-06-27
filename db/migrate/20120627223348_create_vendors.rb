class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :cnpj
      t.string :fornecedor
      t.string :tipo
      t.string :telefone

      t.timestamps
    end
  end
end
