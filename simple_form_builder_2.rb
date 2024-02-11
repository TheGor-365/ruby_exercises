module HexletCode
  class Tag
    def self.build(name, *tag, **attributes)
      attributes_str = attributes.map { |attr, value| " #{attr}='#{value}'" }.join
      unpaired_tags = %w[br hr img input meta area base col embed link param source track command keygen menuitem wbr]

      tag << "<#{name}#{attributes_str}>"
      tag << yield if block_given?
      tag << "</#{name}>" unless unpaired_tags.include?(name)
      tag.join
    end
  end

  def self.form_for(struct, **options, &block)
    Form.new(struct, options, &block).build
  end

  class Form
    def initialize(struct, options, &block)
      @struct = struct
      @options = options
      @fields = []
      instance_eval(&block) if block_given?
    end

    def input(name, **options)
      @fields << Tag.build('label') { name.capitalize }
      @fields << Tag.build('input', type: 'text', name: name, value: @struct.send(name), **options)
    end

    def submit(value = 'Save', **options)
      @fields << Tag.build('input', type: 'submit', value: value, **options)
    end

    def build
      form_attributes = @options.map { |attr, value| "#{attr}='#{value}'" }.join(' ')
      form_tag = Tag.build('form', **form_attributes) { @fields.join("\n") }
      form_tag + "\n"
    end
  end
end
