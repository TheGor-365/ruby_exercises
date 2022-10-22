require 'open-uri'
require 'nokogiri'
require 'json'

url = 'https://hh.ru/search/vacancy?area=1&employment=full&schedule=remote&search_field=name&search_field=company_name&search_field=description&text=&no_magic=true&L_save_area=true&items_on_page=50&hhtmFrom=vacancy_search_list'

html = URI.open(url)
doc = Nokogiri::HTML(html)
vacations = []

doc.css('.serp-item').each do |showing|

  title = showing.css('.serp-item__title').text
  employer = showing.at('.vacancy-serp-item-company').text
  salary = showing.css('.bloko-header-section-3').text
  location = showing.css('.bloko-text').text
  description = showing.css('.g-user-content').text
  link = showing.css('.vacancy-serp-actions').to_s.split(' ').to_a[7]

  vacations.push(
    title: title,
    employer: employer,
    salary: salary,
    location: location,
    description: description,
    link: link
  )
end

puts vacations
puts JSON.pretty_generate(vacations)
