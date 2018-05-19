Given('I navigate to the {string} management section') do |section|
  visit send("admin_#{section}_path")
end
