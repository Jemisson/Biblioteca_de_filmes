class MovieFilter
  class << self
    def retrieve_all
      Movie.all
    end

    def find_by_id(id)
      Movie.find(id)
    end
  end
end
