Given('I sets up an article with the following information:') do |table|
  visit new_admin_article_path
  content, image, published, title = table.raw.to_h.values_at('Content', 'Image', 'Published', 'Title')

  published == 'Yes' ? check('Published') : uncheck('Published')
  fill_in('Title', with: title)
  fill_in('Content', with: content)
  attach_file('Image', Rails.root.join('test', 'upload-files', image)) if image

  click_button 'Create Article'
end

Then('the following articles should be listed:') do |table|
  table.diff!(html_table_to_hashes('table.articles'))
end
