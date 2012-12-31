#encoding: utf-8
class TarefasController < ApplicationController

  def index
    @tarefas = Tarefa.all
  end

  def new
    @tarefa = Tarefa.new
  end

  def create
    @tarefa = Tarefa.new(params[:tarefa])

    if @tarefa.save
      redirect_to tarefas_path, :notice => "Tarefa criada com sucesso!"
    else
      render "new"
    end
  end

  def destroy
    @tarefa = Tarefa.find(params[:id])

    if @tarefa.delete
      redirect_to tarefas_path, :notice => "Tarefa excluída com sucesso!"
    else
      render "index"
    end
  end

end
