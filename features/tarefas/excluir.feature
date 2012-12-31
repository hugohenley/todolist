#encoding: utf-8
# language: pt
Funcionalidade: Devo conseguir excluir as tarefas

Contexto:
  Dado que eu estou na página das tarefas

Cenário: Devo conseguir excluir uma tarefa caso ela exista
  Dado que uma tarefa exista
  E que eu estou na página das tarefas
  Quando eu clico "Excluir"
  Então eu devo ver "Tarefa excluída com sucesso!"