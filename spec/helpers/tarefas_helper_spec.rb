#encoding: utf-8
require 'spec_helper'

describe TarefasHelper do
  context "#tarefa_pronta?" do
    it "deveria retornar sim caso a tarefa esteja finalizada" do
      tarefa = FactoryGirl.build :tarefa, :finalizada => true
      tarefa_pronta?(tarefa).should be_eql "Sim"
    end

    it "deveria retornar não caso a tarefa não esteja finalizada" do
      tarefa = FactoryGirl.build :tarefa, :finalizada => false
      tarefa_pronta?(tarefa).should be_eql "Não"
    end
  end

end