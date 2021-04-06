class Book
    attr_accessor :title, :author
    def initialize(title, author)
      @title = title
      @author = author
    end
    
    def gettitle
       @title
    end

    def getauthor
      @author
    end
end

obj = Book.new("Harry Potter", "J.K Rowling")

puts obj.title
puts obj.author
puts "Title: #{obj.gettitle}"
puts "Author: #{obj.getauthor}"