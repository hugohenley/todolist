When /^que a tarefa com nome "([^"]*)", prioridade "([^"]*)" e finalizada exista$/ do |nome, prioridade|
  FactoryGirl.create :tarefa, :nome => nome, :prioridade => prioridade, :finalizada => true
end

When /^que uma tarefa exista$/ do
  FactoryGirl.create :tarefa
end