# language: pt
Funcionalidade: Devo conseguir editar as tarefas de uma pessoa

Contexto:
  Dado que a tarefa com nome "Tarefa 1", prioridade "Alta" e finalizada exista
  E que eu estou na página de edição da tarefa "Tarefa 1"

Cenário: Devo ver o título
  Então eu devo ver "Atualize aqui a sua tarefa!"

Cenário: Devo conseguir editar uma tarefa
  Quando eu preencho "tarefa[nome]" com "Tarefa 02"
  Quando eu seleciono "Baixa" de "tarefa[prioridade]"
  Quando eu seleciono "Não" de "tarefa[finalizada]"
  Quando eu aperto "Atualizar"
  Então eu devo ver "Tarefa atualizada com sucesso!"