#encoding: utf-8
module HtmlSelectorsHelpers
  # Maps a name to a selector. Used primarily by the
  #
  #   When /^(.+) within (.+)$/ do |step, scope|
  #
  # step definitions in web_steps.rb
  #
  def selector_for(locator)
      case locator

      when "the page"
        "html > body"

        when "cabeçalho da tabela"
          "#cabecalho"

        when "nome da tarefa"
          "#nome"

        when "prioridade da tarefa"
          "#prioridade"

        when "status da tarefa"
          "#status"

      when /^"(.+)"$/
        $1

      else
        raise "Can't find mapping from \"#{locator}\" to a selector.\n" +
          "Now, go and add a mapping in #{__FILE__}"

      end
  end
end

World(HtmlSelectorsHelpers)
