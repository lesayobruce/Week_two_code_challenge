#BDD
#the article initializes author magazine and title
#it is initialized with an author as an Author object, a magazine as a Magazine object and a title as a string
#an article title returns the title of a given article
#Article.all will return an array of all article instances

#end
class Article

    attr_accessor :magazine, :title
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

    def author
        @author.name
    end
end