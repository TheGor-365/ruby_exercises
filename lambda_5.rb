odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

int_store = Proc.new { |element| element.is_a? Integer }
ints = odds_n_ends.select(&int_store)

pp ints
