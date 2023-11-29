require 'selenium-webdriver'
require 'cgi'

module UrlGenerator
  def prepare_uri(string)
    CGI.escape string
  end
end


class Animal
  # include UrlGenerator - prepare_uri() don't work for class (only: Animal.new.prepare_uri) !!!
  # exitend UrlGenerator - prepare_uri() will work for class
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  class << self
    include UrlGenerator # will work

    def find(term = '')
      driver    = Selenium::WebDriver.for :firefox
      full_term = self.prepare_uri term + ' ' + self.name.downcase

      driver.get "https://ddg.gg/?q=#{full_term}"
    end
  end

  def hi
    pp "Hi, my name is #{@name}"
  end
end


class Cat < Animal
  class << self
    attr_accessor :avg_height
  end
end



pp Animal.singleton_class; puts


pp Animal.singleton_class.instance_methods.respond_to? :find
pp Animal.singleton_class.instance_methods.grep /fin/; puts


pp Cat.singleton_class
pp Cat.singleton_class.superclass; puts


pp Cat.singleton_class.instance_methods.respond_to? :find
pp Cat.singleton_class.instance_methods.grep /fin/; puts


pp Cat.avg_height = 20
