p sentence = "This is a sample sentence."

p sentence.gsub(/a/, "")
p sentence.gsub(/This/, "*")
p sentence.gsub(/[^a]/, "*")
puts

p sentence = "Th1s 1s a sampl3 s3nt3nc3."

p sentence.gsub(/[0123456789]/, "!")
p sentence.gsub(/[0-9]/, "!")
p sentence.gsub(/[A-Za-z]/, "🔥")
puts

p lorem = "Lorem ipsum."

p lorem.gsub(/[\w]/, "wow")
p lorem.gsub(/[\W]/, "wow")

p lorem = "L0r3m 1psum"
p lorem.gsub(/[\d]/, "-")
p lorem.gsub(/[\D]/, "-")
puts

p cool_phrase = "slow lorises are cool"
p cool_phrase.gsub(/\w+/) {|word| word.capitalize}

p year = "The year is 3100"
p year.gsub(/\d+/) {|num| num.to_i + 1}
puts

p phone_number = "(123)456-7890"
p phone_number.gsub(/[()-], ""/)

p steve = "St97eve Brul()*)e "
p steve.gsub(/[\W\d]/, "").split(/(?=[A-Z])/).join(" ")
