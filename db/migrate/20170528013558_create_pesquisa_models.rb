class CreatePesquisaModels < ActiveRecord::Migration[5.1]
  def change
    create_table :pesquisa_models do |t|
      t.string :titulo
      t.text :descricao
      t.string :publico_alvo
      t.date :data_limite
      t.string :link

      t.timestamps
    end
  end
end
