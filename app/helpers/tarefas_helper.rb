#encoding: utf-8
module TarefasHelper
  def tarefa_pronta?(tarefa)
    tarefa.finalizada ? "Sim" : "Não"
  end
end
