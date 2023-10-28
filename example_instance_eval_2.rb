def mail
  builder = MailBuilder.new
  yield builder
end

mail do |f|
  f.subject @subject
  f.name    name
end


puts


def mail &block
  builder = MailBuilder.new
  builder.instance_eval &block
end

mail do
  subject @subject
  name    name
end
