def merge_all(hash, *hashes)
  hash.merge( *hashes )
end

hash_1 = { key_1: 'value_1' }
hash_2 = { key_2: 'value_2' }

puts merge_all(hash_1, hash_2)
