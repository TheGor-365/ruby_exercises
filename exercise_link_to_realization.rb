def link_to(name, link, attributes = {})
  attr_pairs = attributes.any? ? [''] : []

  attributes.each do |name, value|
    attr_pairs << "#{name}='#{value}'"
  end

  html_attr = attr_pairs.join(' ')

  puts "<a href='#{link}'#{html_attr}>#{name}</a>"
end

link_to 'link_name', '/url', class: 'link'
