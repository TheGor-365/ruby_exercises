require 'mechanize'

agent = Mechanize.new
chosen = false

until chosen
  page        = agent.get("https://www.kinopoisk.ru/lists/movies/top500/#{rand(5)}/")
  movie_block = page.search("div[styles_root__ti07r](@class, 'styles_root__ti07r')")
  movie       = page.search("//span[styles_position__TDe4E(@class, 'styles_position__TDe4E')]").to_a.sample
  # movie_title
  # movie_rating
  # movie_link
  # movie_overview
end
