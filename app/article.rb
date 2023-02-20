#BDD
#the article initializes author magazine and title
#it is initialized with an author as an Author object, a magazine as a Magazine object and a title as a string
#an article title returns the title of a given article
#Article.all will return an array of all article instances

#end
class Article
    attr_reader :author, :magazine, :title
    @@all = []
  
    def initialize(author, magazine, title)
      @author = author
      @magazine = magazine
      @title = title
      @@all << self
    end
  
    def self.all
      @@all
    end
  end
  
  # Sample author and magazine objects
  class Author
    attr_reader :name
    def initialize(name)
      @name = name
    end
  end
  
  class Magazine
    attr_reader :name
    def initialize(name)
      @name = name
    end
  end
  
  # Creating a sample article object
  author = Author.new("Wakili Timam")
  magazine = Magazine.new("Motorcycle Diary")
  article = Article.new(author, magazine, "New motorbikes")
  
  # Outputting the author and magazine names
  puts article.author.name # should output "Wakili Timam"
  puts article.magazine.name # should output "motorcycle diary"