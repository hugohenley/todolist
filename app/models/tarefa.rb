class Tarefa < ActiveRecord::Base
  attr_accessible :prioridade, :pronto, :nome
end
