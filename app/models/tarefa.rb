#encoding: utf-8
class Tarefa < ActiveRecord::Base
  attr_accessible :nome, :prioridade, :finalizada

  validates :nome, :presence => { :message => "O nome é obrigatório." }
  validates :prioridade, :presence => { :message => "A prioridade é obrigatória." }

end
