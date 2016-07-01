class Media
    def set_title=(title)
        @title = title
    end

    def get_title
        return @title
    end

    def set_publisher=(publisher)
        @publisher = publisher
    end

    def get_publisher
        return @publisher
    end
end

class Book < Media
    def set_publish_date=(publish_date)
        @publish_date = publish_date
    end

    def get_publish_date
        return @publish_date
    end

    def set_author=(author)
        @author = author
    end

    def get_author
        return @author
    end

    def set_forward_author=(forward_author)
        @forward_author = forward_author
    end

    def get_forward_author
        return @forward_author
    end

    def about_book
        return "#{@title} is written by #{@author} and published by #{@publisher}."
    end
end

class Reports < Media
    def set_publish_schedule=(publish_schedule)
        @publish_schedule = publish_schedule
    end

    def get_publish_schedule
        return @publish_schedule
    end
end
