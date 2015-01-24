Given /^the following articles exist$/ do |table|
  Article.create table.hashes
end
