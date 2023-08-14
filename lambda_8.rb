crew = {
  captain:        "Picard",
  first_officer:  "Riker",
  lt_cdr:         "Data",
  lt:             "Worf",
  ensign:         "Ro",
  counselor:      "Troi",
  chief_engineer: "LaForge",
  doctor:         "Crusher"
}

first_half = -> (name, value) { value < "M" }
a_to_m = crew.select &first_half

pp a_to_m.values
