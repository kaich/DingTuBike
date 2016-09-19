module ApplicationHelper

  def render_markdown(markdown_content)
    if !markdown_content
    return ""
    end
    renderer = Redcarpet::Render::HTML
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})
    markdown.render(markdown_content).html_safe
  end




end
