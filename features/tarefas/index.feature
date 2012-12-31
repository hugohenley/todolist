# language: pt
Funcionalidade: Visualizar as tarefas de uma pessoa

Contexto:
  Dado que eu estou na página das tarefas

Cenário: Devo ver o título
  Então eu devo ver "Sua lista de tarefas:"

Cenário: Devo ver a mensagem dizendo que o usuário não tem tarefas criadas
  Então eu devo ver "Você não tem nenhuma tarefa criada!"

Cenário: Devo ver dados no cabeçalho da tabela caso o usuário tenha tarefas criadas
  Dado que uma tarefa exista
  E que eu estou na página das tarefas
  Então eu devo ver "Nome" dentro do cabeçalho da tabela
  Então eu devo ver "Prioridade" dentro do cabeçalho da tabela
  Então eu devo ver "Finalizada" dentro do cabeçalho da tabela

Cenário: Devo ver detalhes das tarefas na tabela caso elas existam
  Dado que a tarefa com nome "Tarefa 1", prioridade "Alta" e finalizada exista
  E que eu estou na página das tarefas
  Então eu devo ver "Tarefa 1" dentro do nome da tarefa
  Então eu devo ver "Alta" dentro da prioridade da tarefa
  Então eu devo ver "Sim" dentro do status da tarefa

Cenário: Devo conseguir ir para a página de criação de uma tarefa
  Quando eu clico "Criar"
  Então eu devo estar na página de criação de uma tarefa

Cenário: Devo conseguir ir para a página de edição de uma tarefa
  Dado que a tarefa com nome "Tarefa 1", prioridade "Alta" e finalizada exista
  E que eu estou na página das tarefas
  Quando eu clico "Editar"
  Então eu devo estar na página de edição da tarefa "Tarefa 1"