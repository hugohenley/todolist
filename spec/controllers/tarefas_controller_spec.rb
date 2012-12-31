# -*- encoding : utf-8 -*-
require "spec_helper"

describe TarefasController do
  describe "GET index" do
    context "deve retornar os status http corretos" do
      it "deve retornar status 200 caso o formato seja xml" do
        get :index, :format => :xml

        response.should be_success
        end

      it "deve retornar status 200 caso o formato seja json" do
        get :index, :format => :json

        response.should be_success
      end
    end

    context "deve retornar os dados corretos" do
      context "em xml" do
        before(:each) do
          FactoryGirl.create :tarefa, :nome => "Tarefa 01", :finalizada => false, :prioridade => "Alta"
        end

        #TODO: Testar usando os matchers do capybara
        it "deve retornar os dados das tarefas criadas" do
          #get :index, :format => :xml

          #response.should have_xpath("//tarefa//nome", :text => "Tarefa 01")
        end
        end
      end
    end
  end
