class TarefasController < ApplicationController

  def index
    @tarefas = Tarefa.all
  end

  def new
    @tarefa = Tarefa.new
  end

end
