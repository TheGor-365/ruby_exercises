text = 'The will to win, the desire to succeed, the urge to reach your full potential… these are the keys that will unlock the door to personal excellence. Follow your heart. The mind is everything. What you think you become. We can easily forgive a child who is afraid of the dark; the real tragedy of life is when men are afraid of the light. If you let your past go, it doesn’t mean that your past will let you go. When you start thinking a lot about your past, it becomes your present and you can’t see your future without it. Wisdom is knowing how little we know. Everyone underwent something that changed him. We do not remember days, we remember moments. To live is the rarest thing in the world. Most people exist, that’s all.'

def top_3_words text
  text.gsub(/^A-Za-z'/, " ")
  .downcase
  .split
  .each_with_object(Hash.new(0)) { |word, dict| dict[word] += 1 }
  .sort_by { |_k, v| -v }
  .first(3).to_h
end

pp top_3_words(text)
