# Week_two_code_challenge
  #Article_withoutAR
  In this challenge we use ruby in the implementation of a magazyne system, consisting of Author, magazine and Article classes.
  This system allows authors to create articles and associate them with magazines and providing methods to query information about the authors, magazines and articles.
          #Usage
To use the magazine system, you first need to require the necessary files:
ruby

require_relative 'author' require_relative 'magazine' require_relative 'article' 
Creating Authors
To create an author, initialize an instance of the Author class with the author's name:
ruby

author = Author.new("Jane Smith") 
Creating Magazines
To create a magazine, initialize an instance of the Magazine class with the magazine's name and category:
ruby

magazine = Magazine.new("Vogue", "Fashion") 
Creating Articles
To create an article, initialize an instance of the Article class with an author, a magazine, and a title:
ruby

article = Article.new(author, magazine, "The Latest Fashion Trends") 
Querying Information
The magazine system provides several methods for querying information about authors, magazines, and articles. Here are some examples:
ruby

# Get all authors authors = Author.all # Get all magazines magazines = Magazine.all # Get all articles articles = Article.all # Get the name of an author name = author.name # Get the name of a magazine name = magazine.name # Get the category of a magazine category = magazine.category # Get the title of an article title = article.title # Get the author of an article author = article.author # Get the magazine of an article magazine = article.magazine # Get the articles written by an author articles = author.articles # Get the magazines an author has contributed to magazines = author.magazines # Add an article for an author author.add_article(magazine, "New Discoveries in Science") # Find a magazine by name magazine = Magazine.find_by_name("Vogue") # Get the article titles for a magazine titles = magazine.article_titles # Get the contributing authors for a magazine authors = magazine.contributing_authors 
Example
Here's an example of how you could use the magazine system:
ruby

# Create some authors author1 = Author.new("Jane Smith") author2 = Author.new("John Doe") # Create some magazines magazine1 = Magazine.new("Vogue", "Fashion") magazine2 = Magazine.new("National Geographic", "Science") # Add articles for the authors author1.add_article(magazine1, "The Latest Fashion Trends") author1.add_article(magazine2, "New Discoveries in Science") author2.add_article(magazine2, "The Future of Technology") # Find a magazine by name magazine = Magazine.find_by_name("National Geographic") # Print some information puts "Authors:" Author.all.each do |author| puts "#{author.name} has written for #{author.magazines.count} magazines and topic areas are: #{author.topic_areas.join(", ")}" end puts "\nMagazines:" Magazine.all.each do |magazine| puts "#{magazine.name} has #{magazine.contributors.count} contributors and article titles are: #{magazine.article_titles.join(", ")}" end puts "\nContributing authors for #{magazine.name}:" magazine.contributing_authors.each do |author| puts "- #{author.name}" end 
Testing
The magazine system


