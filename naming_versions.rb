def compare_versions(version_1, version_2)
  major_1, minor_1 = version_1.split('.')
  major_2, minor_2 = version_2.split('.')

  major_compare = major_1[0].to_i <=> major_2[0].to_i
  minor_compare = minor_1[1].to_i <=> minor_2[1].to_i

  major_compare.zero? ? minor_compare : major_compare
end


pp compare_versions '2.3.4', '3.2.4'
