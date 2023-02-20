#BDD
#the article initializes author magazine and title
#it is initialized with an author as an Author object, a magazine as a Magazine object and a title as a string
#an article title returns the title of a given article
#Article.all will return an array of all article instances

#end
class Author
    attr_reader :name
    @@all = []
    def initialize(name)
      @name = name
      @@all << self
    end
    def self.all
      @@all
    end
    def articles
      Article.all.select { |article| article.author == self }
    end
    def magazines
      articles.map { |article| article.magazine }.uniq
    end
    def add_article(magazine, title)
      Article.new(self, magazine, title)
    end
    def topic_areas
      magazines.map { |magazine| magazine.category }.uniq
    end
  end

  author = Author.new("Wakili Timam")
  puts author.name