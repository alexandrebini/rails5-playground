module Rails5Playground
  module Tables
    def html_table_to_hashes(selector)
      headers = all("#{selector}/thead/tr/th").map(&:text)
      all("#{selector}/tbody/tr").map do |row|
        content = row.all('td').map(&:text)
        Hash[headers.zip(content)]
      end
    end
  end
end

World(Rails5Playground::Tables)
