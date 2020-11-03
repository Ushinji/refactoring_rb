platform = "mac"
brawser = "ie"
resize = 1

is_mac_os = !platform.upcase.index("MAC").nil?
is_ie_brawser = !brawser.upcase.index("IE").nil?
was_resized = resize > 0

if is_mac_os && is_ie_brawser && was_resized
  puts "TRUE"
end
