p "dog".gsub(/\w+/) { |animal| animal == "dog" ? "cat" : "dog" }
puts

colors = {
  "B" => "blue",
  "G" => "green",
  "R" => "red"
}

p "BBBGRR".gsub(/\w/, colors)
