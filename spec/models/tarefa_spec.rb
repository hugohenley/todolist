#encoding: utf-8
require 'spec_helper'

describe Tarefa do
  context "validações" do
    it "não deve ser possível criar uma tarefa sem nome" do
      @tarefa = FactoryGirl.build :tarefa, :nome => nil
      @tarefa.valid?
      @tarefa.errors.messages[:nome].should be_eql ["O nome é obrigatório."]
    end

    it "não deve ser possível criar uma tarefa sem prioridade" do
      @tarefa = FactoryGirl.build :tarefa, :prioridade => nil
      @tarefa.valid?
      @tarefa.errors.messages[:prioridade].should be_eql ["A prioridade é obrigatória."]
    end
  end
end
