module ApplicationHelper
  def mensagens_flash
    if flash[:notice]
      retorno ||= content_tag :div, (content_tag :h4, flash[:notice]), :class => "alert alert-success"
    end
    if flash[:warning]
      retorno ||= content_tag :div, (content_tag :h4, flash[:warning]), :class => "alert alert-block"
    end
    if flash[:error]
      retorno ||= content_tag :div, (content_tag :h4, flash[:error]), :class => "alert alert-error"
    end
    retorno
  end
end
