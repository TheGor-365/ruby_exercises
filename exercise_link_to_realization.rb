def link_to(name, link, attributes = {})
  attr_pairs = attributes.any? ? [''] : []

  attributes.each do |name, value|
    attr_pairs << "#{name}='#{value}'"
  end

  link_attrs = attr_pairs.join(' ')
  "<a href='#{link}'#{link_attrs}>#{name}</a>"
end


link = link_to 'link_name', '/url', class: 'link'

pp link
