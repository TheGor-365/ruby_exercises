def read_first_and_last_name(data_source)
  [data_source.read_string, data_source.read_string]
end



def print_name(first_name, last_name)
  pp "#{first_name} #{last_name}"
end

def read_and_print_name
  first_name, last_name = read_first_and_last_name(data_source)
  print_name(first_name, last_name)
end



class FullName
  def FullName.read(data_source)
    FullName.new(data_source.read_string, data_source.read_strng)
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def print
    pp "#{@first_name} #{@last_name}"
  end
end



def read_and_print_name
  FullName.read(data_source).print
end
