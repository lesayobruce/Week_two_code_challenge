class author
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def articles
        Article.all.filter{|article| article.author == @name}
    end

    def magazine
    article.map{|article| article.magazine}.uniq
    end

    def add_article(magazine, title)
        Article,new(self, magazine, title)
    end
    def topic_areas
        magazine.map{|magazine| magazine.category}.uniq
    end

    
end
