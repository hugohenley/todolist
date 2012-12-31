#encoding: utf-8
class Tarefa < ActiveRecord::Base
  attr_accessible :prioridade, :pronto, :nome
  validates :nome, :presence => { :message => "O nome é obrigatório." }
  validates :prioridade, :presence => { :message => "A prioridade é obrigatória." }

end
