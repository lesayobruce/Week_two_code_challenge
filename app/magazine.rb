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
