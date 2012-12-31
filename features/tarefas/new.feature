# language: pt
Funcionalidade: Devo conseguir criar as tarefas de uma pessoa

Contexto:
  Dado que eu estou na página de criação de uma tarefa

Cenário: Devo ver o título
  Então eu devo ver "Crie aqui a sua tarefa!"

Cenário: Devo conseguir criar uma tarefa
  Quando eu preencho "tarefa[nome]" com "Tarefa 01"
  Quando eu seleciono "Alta" de "tarefa[prioridade]"
  Quando eu aperto "Criar"
  Então eu devo ver "Tarefa criada com sucesso!"

Cenário: Não deve ser possível criar uma terafa sem nome
  Quando eu seleciono "Alta" de "tarefa[prioridade]"
  Quando eu aperto "Criar"
  Então eu devo ver "O nome é obrigatório."

Cenário: Devo conseguir voltar para a página que contém a listagem de tarefas
  Quando eu clico "Voltar"
  Então eu devo estar na página das tarefas