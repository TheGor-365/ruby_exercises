class FormBuilder
  def initialize
    @fields = []
  end

  def add_field(label, type)
    @fields << { label: label, type: type }
  end

  def render_form
    @fields.each do |field|
      puts "Label: #{field[:label]}"
      puts "Type: #{field[:type]}"
      puts "-----------------------"
    end
  end
end

# Example usage:
form_builder = FormBuilder.new

form_builder.add_field("Name", "text")
form_builder.add_field("Email", "email")
form_builder.add_field("Message", "textarea")

form_builder.render_form
