Given /^the following articles exist:$/ do |table|
  # table is a Cucumber::Ast::Table
  Article.create!(table.hashes)
end

