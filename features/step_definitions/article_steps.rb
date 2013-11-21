Given /^the following articles exist:$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |hash|
    article = Article.new(hash)
    article.id = hash['id']
    article.save!
  end
end

