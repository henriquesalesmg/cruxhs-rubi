class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.string :pedido
      t.text :mensagem

      t.timestamps null: false
    end
  end
end
