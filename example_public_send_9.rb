USER_FIELDS = [:name, :age]
user = ['Carl', 45]

def user_fields user
  USER_FIELDS.each_with_object({}) do |field, memo|
    memo["#{field}"] = user.public_send(field) if user.respond_to?(field)
  end
end

pp user_fields user
