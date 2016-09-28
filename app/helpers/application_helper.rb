module ApplicationHelper

  def alert_type(type)

    alert_type = type 
    if type.to_s == "notice"
      alert_type = "success" 
    elsif type.to_s == "alert"
      alert_type = "danger"
    end

    alert_type
  end

  def admin? 
    current_user.admin?
    true
  end

  def render_markdown(markdown_content)
    if !markdown_content
    return ""
    end
    renderer = Redcarpet::Render::HTML
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})
    markdown.render(markdown_content).html_safe
  end


end
