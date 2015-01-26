Given /^the following articles exist$/ do |table|
  table.hashes.each do |hash|
    @article = Article.get_or_build_article()
    @article.title = hash['title']
    @article.body = hash['body']
    @article.save!
  end
end
