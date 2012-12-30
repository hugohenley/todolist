class CreateTarefas < ActiveRecord::Migration
  def change
    create_table :tarefas do |t|
      t.string :nome
      t.string :prioridade
      t.boolean :finalizada

      t.timestamps
    end
  end
end
