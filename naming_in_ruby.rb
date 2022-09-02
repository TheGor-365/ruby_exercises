def build_query_string query_params
  query_parts = []

  for query_part in query_params.sort
    name, value = query_part
    query_parts << "#{name}=#{value}"
  end

  query_parts.join('&')
end

hash = {first: 'one'}

p build_query_string hash
