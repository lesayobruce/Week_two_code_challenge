#BDD
#Magazine
#1. a magazine is initialized with a name as a string and a category as a string
#2. the name and category can be changed after initialization
#3.Magazine#name returns the name of the magazine
#4. Magazine#category returns the category of the magazine 
#5. Magazine.all returns an array f all magazine instances

#end 
class magazine
    attr_accessor :name, :category

    @@all = []

 def initialize(name, category)
   @name = name
   @category = category
   @@all << self
 end

 def self.all
   @@all
 end

 def contributors
    Articles.filter{|article| article.magazine.name==@name}.map{|article|article.author}.uniq
 end

 def self.find_by_name(name)
   Magazine.all.find{|magazine| magazine.name==name}
 end

 def article_titles
   magazine_titles.map{|article| article.title}
 end

 def contributing_authors
   main_authors = []
   magazine_titles.tally.each{|key, value| value>2 &&
   (main_authors<<key)}
   main_authors 
 end   
end
