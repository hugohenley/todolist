module HtmlSelectorsHelpers
  # Maps a name to a selector. Used primarily by the
  #
  #   When /^(.+) within (.+)$/ do |step, scope|
  #
  # step definitions in web_steps.rb
  #
  def selector_for(locator)
    if node = turma_show_selector_for(locator)
      node
    else

      case locator

      when "the page"
        "html > body"

      when /^"(.+)"$/
        $1

      else
        raise "Can't find mapping from \"#{locator}\" to a selector.\n" +
          "Now, go and add a mapping in #{__FILE__}"

      end
    end
  end
end

World(HtmlSelectorsHelpers)
