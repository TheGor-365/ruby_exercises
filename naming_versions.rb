def compare_versions version1, version2
  major1, minor1 = version1.split('.')
  major2, minor2 = version2.split('.')

  major_compare = major1[0].to_i <=> major2[0].to_i
  minor_compare = minor1[1].to_i <=> minor2[1].to_i

  major_compare.zero? ? minor_compare : major_compare
end

p compare_versions '2.3.4', '3.2.4'
