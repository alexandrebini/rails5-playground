Given('I sets up an article with the following information:') do |table|
  visit new_admin_article_path
  values = table.raw.to_h
  values['Published'] == 'Yes' ? check('Published') : uncheck('Published')
  fill_in('Title', with: values['Title'])
  fill_in('Content', with: values['Content'])
  click_button 'Create Article'
end

Then('the following articles should be listed:') do |table|
  table.diff!(html_table_to_hashes('table.articles'))
end
